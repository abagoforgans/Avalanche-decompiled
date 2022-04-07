contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address factoryAddress;
uint32 stor3;
address routerAddress;
uint256 stor3;
address sub_ffa46577Address;
mapping of uint8 stor5;
mapping of address vaults;

function owner() {
    return owner
}

function vaults(address arg1) {
    require calldata.size - 4 >= 32
    return vaults[arg1]
}

function factory() {
    return factoryAddress
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function router() {
    return address(routerAddress)
}

function sub_ffa46577(?) {
    return sub_ffa46577Address
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
    mem[196 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
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

function sub_6b97f0b6(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x72746f6b656e732026207374617475736573206c656e677468206d69736d6174636865,
                    mem[199 len 29]
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x72746f6b656e732026207374617475736573206c656e677468206d69736d6174636865,
                    mem[199 len 29]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        vaults[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
        idx = idx + 1
        continue 
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor1++
    require arg3.length >= 64
    if not stor5[address(cd[(arg3 + 36)])]:
        revert with 0, 'token not whitelisted'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(cd[(arg3 + 36)]), sub_ffa46577Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(routerAddress), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = address(cd[(arg3 + 36)])
    mem[32] = 6
    require ext_code.size(vaults[address(cd[(arg3 + 36)])])
    call vaults[address(cd[(arg3 + 36)])].0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(routerAddress))
    call address(routerAddress).removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, 0, sub_ffa46577Address, ext_call.return_data[0], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[96] = 2
    mem[128] = address(cd[(arg3 + 36)])
    mem[160] = sub_ffa46577Address
    mem[228] = address(routerAddress)
    mem[260] = 0
    mem[192] = 68
    mem[228 len 28] = Mask(224, 0, stor3)
    mem[224 len 4] = approve(address rg1, uint256 rg2)
    mem[292 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0
    mem[384 len 4] = 0
    call address(cd[(arg3 + 36)]) with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[356 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, '!safeApprove'
    mem[292] = return_data.size
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 329] = address(routerAddress)
        mem[ceil32(return_data.size) + 361] = -1
        mem[ceil32(return_data.size) + 293] = 68
        mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 393 len 64] = 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 485 len 4] = test266151307()
        call address(cd[(arg3 + 36)]) with:
           funct uint32(stor3)
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 393] = return_data.size
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not return_data.size:
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2955 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _2989 = mem[(2 * ceil32(return_data.size)) + _2955 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2955 + 394])] = mem[(2 * ceil32(return_data.size)) + _2955 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2955 + 394])]
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 526 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 530] = 32
                mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 562] = 13
                mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 594] = 0x21736166655472616e7366657200000000000000000000000000000000000000
                revert with memory
                  from (32 * _2989) + (4 * ceil32(return_data.size)) + 526
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _2989) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 425]:
                revert with 0, '!safeApprove'
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
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
            require ext_code.size(address(routerAddress))
            call address(routerAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2957 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _2990 = mem[(2 * ceil32(return_data.size)) + _2957 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2957 + 394])] = mem[(2 * ceil32(return_data.size)) + _2957 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2957 + 394])]
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 526 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 530] = 32
                mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 562] = 13
                mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 594] = 0x21736166655472616e7366657200000000000000000000000000000000000000
                revert with memory
                  from (32 * _2990) + (4 * ceil32(return_data.size)) + 526
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _2990) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
        if stor1 + 1 != stor1:
            revert with 0, 'ReentrancyGuard: reentrant call'
    mem[ceil32(return_data.size) + 329] = address(routerAddress)
    mem[ceil32(return_data.size) + 361] = -1
    mem[ceil32(return_data.size) + 393 len 64] = 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + 485 len 4] = test266151307()
    call address(cd[(arg3 + 36)]) with:
       funct uint32(stor3)
         gas gas_remaining wei
        args -1, Mask(224, 32, 0, address(routerAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, '!safeApprove'
    mem[ceil32(return_data.size) + 393] = return_data.size
    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if not return_data.size:
        require ext_code.size(address(cd[(arg3 + 36)]))
        staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
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
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 394
        require return_data.size >= 32
        _2947 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
        _2985 = mem[(2 * ceil32(return_data.size)) + _2947 + 394]
        mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2947 + 394])] = mem[(2 * ceil32(return_data.size)) + _2947 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2947 + 394])]
        require ext_code.size(sub_ffa46577Address)
        staticcall sub_ffa46577Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg3 + 68)]:
            revert with 0, 'insufficient Coins received'
        mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 526 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 618 len 4] = ext_call.return_data[20 len 4]
        call sub_ffa46577Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 590 len 4]
        if not return_data.size:
            require not ext_call.success
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 530] = 32
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 562] = 13
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 594] = 0x21736166655472616e7366657200000000000000000000000000000000000000
            revert with memory
              from (32 * _2985) + (4 * ceil32(return_data.size)) + 526
               len (5 * ceil32(return_data.size)) + 100
        mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 13
            mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 0x21736166655472616e7366657200000000000000000000000000000000000000
        else:
            if not return_data.size:
                if stor1 + 1 == stor1:
                mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
                mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 31
                mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 'ReentrancyGuard: reentrant call'
            else:
                require return_data.size >= 32
                if not mem[(32 * _2985) + (4 * ceil32(return_data.size)) + 558]:
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 13
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 0x21736166655472616e7366657200000000000000000000000000000000000000
                else:
                    if stor1 + 1 == stor1:
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 31
                    mem[(32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 'ReentrancyGuard: reentrant call'
        revert with memory
          from (32 * _2985) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527
           len (5 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    if not mem[ceil32(return_data.size) + 425]:
        revert with 0, '!safeApprove'
    require ext_code.size(address(cd[(arg3 + 36)]))
    staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 394
    require return_data.size >= 32
    _2949 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
    _2986 = mem[(2 * ceil32(return_data.size)) + _2949 + 394]
    mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2949 + 394])] = mem[(2 * ceil32(return_data.size)) + _2949 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2949 + 394])]
    require ext_code.size(sub_ffa46577Address)
    staticcall sub_ffa46577Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg3 + 68)]:
        revert with 0, 'insufficient Coins received'
    mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 526 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 618 len 4] = ext_call.return_data[20 len 4]
    call sub_ffa46577Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 590 len 4]
    if not return_data.size:
        require not ext_call.success
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 530] = 32
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 562] = 13
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 594] = 0x21736166655472616e7366657200000000000000000000000000000000000000
        revert with memory
          from (32 * _2986) + (4 * ceil32(return_data.size)) + 526
           len (5 * ceil32(return_data.size)) + 100
    mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 13
        mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 0x21736166655472616e7366657200000000000000000000000000000000000000
    else:
        if not return_data.size:
            if stor1 + 1 == stor1:
            mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
            mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 31
            mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 'ReentrancyGuard: reentrant call'
        else:
            require return_data.size >= 32
            if not mem[(32 * _2986) + (4 * ceil32(return_data.size)) + 558]:
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 13
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 0x21736166655472616e7366657200000000000000000000000000000000000000
            else:
                if stor1 + 1 == stor1:
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = 32
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = 31
                mem[(32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 595] = 'ReentrancyGuard: reentrant call'
    revert with memory
      from (32 * _2986) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 527
       len (5 * ceil32(return_data.size)) + 100
}



}
