contract main {




// =====================  Runtime code  =====================


const sub_d1a81102(?) = 0xe55e19fb4f2d85af758950957714292dac1e25b2


address owner;
uint256 stor1;
address factoryAddress;
address routerAddress;
address sub_ffa46577Address;
mapping of uint8 stor5;
mapping of address vaults;
mapping of uint8 sub_d84d29ca;

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

function sub_d84d29ca(?) {
    require calldata.size - 4 >= 32
    return sub_d84d29ca[arg1]
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function router() {
    return routerAddress
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
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaults[address(cd[(arg3 + 36)])])
    call vaults[address(cd[(arg3 + 36)])].withdrawAll() with:
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
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, 0, sub_ffa46577Address, ext_call.return_data[0], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[196 len 64] = approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095, 0, 0
    call address(cd[(arg3 + 36)]) with:
         gas gas_remaining wei
        args 0, Mask(32, 224, this.address) >> 224
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
            revert with 0, '!safeApprove'
        mem[296 len 64] = approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(cd[(arg3 + 36)]) with:
           funct Mask(32, 192, block.timestamp) >> 192
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                revert with 0, '!safeApprove'
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
            call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient BNB received'
            mem[396 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[460 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                    revert with 0, '!safeTransfer'
            else:
                mem[428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[428]:
                        revert with 0, '!safeTransfer'
            if stor1 + 1 != stor1:
                revert with 0, 'ReentrancyGuard: reentrant call'
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, '!safeApprove'
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
            call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient BNB received'
            mem[ceil32(return_data.size) + 397 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 461 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                    revert with 0, '!safeTransfer'
                if stor1 + 1 != stor1:
                    revert with 0, 'ReentrancyGuard: reentrant call'
            else:
                mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                '!safeTransfer',
                                mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 429]:
                        revert with 0, 
                                    '!safeTransfer',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if stor1 + 1 != stor1:
                    revert with 0, 
                                'ReentrancyGuard: reentrant call',
                                mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not return_data.size:
            mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 389 len 4] = test266151307()
            call address(cd[(arg3 + 36)]).0xac1e25b2 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                    revert with 0, '!safeApprove'
                require ext_code.size(address(cd[(arg3 + 36)]))
                staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
                call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffa46577Address)
                staticcall sub_ffa46577Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg3 + 68)]:
                    revert with 0, 'insufficient BNB received'
                mem[ceil32(return_data.size) + 397 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_ffa46577Address with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 461 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                        revert with 0, '!safeTransfer'
                    if stor1 + 1 != stor1:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                else:
                    mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeTransfer',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 429]:
                            revert with 0, 
                                        '!safeTransfer',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if stor1 + 1 != stor1:
                        revert with 0, 
                                    'ReentrancyGuard: reentrant call',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not return_data.size:
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 430] = block.timestamp + 1
                    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
                    call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_ffa46577Address)
                    staticcall sub_ffa46577Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg3 + 68)]:
                        revert with 0, 
                                    'insufficient BNB received',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                    call sub_ffa46577Address with:
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 398 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_code.size(address(cd[(arg3 + 36)]))
                    staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 430] = block.timestamp + 1
                    require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
                    call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_ffa46577Address)
                    staticcall sub_ffa46577Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[(arg3 + 68)]:
                        revert with 0, 
                                    'insufficient BNB received',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                    call sub_ffa46577Address with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 366 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 64, 0, block.timestamp + 1), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                        revert with 0, '!safeTransfer'
                else:
                    mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 430]:
                            revert with 0, '!safeTransfer'
                if stor1 + 1 != stor1:
                    revert with 0, 'ReentrancyGuard: reentrant call'
        else:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
            mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 389 len 4] = test266151307()
            call address(cd[(arg3 + 36)]).0xac1e25b2 with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                    revert with 0, '!safeApprove'
                require ext_code.size(address(cd[(arg3 + 36)]))
                staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
                call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffa46577Address)
                staticcall sub_ffa46577Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg3 + 68)]:
                    revert with 0, 'insufficient BNB received'
                mem[ceil32(return_data.size) + 397 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_ffa46577Address with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 461 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                        revert with 0, '!safeTransfer'
                    if stor1 + 1 != stor1:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                else:
                    mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    '!safeTransfer',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 429]:
                            revert with 0, 
                                        '!safeTransfer',
                                        mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if stor1 + 1 != stor1:
                        revert with 0, 
                                    'ReentrancyGuard: reentrant call',
                                    mem[(2 * ceil32(return_data.size)) + 498 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                '!safeApprove',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    '!safeApprove',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(address(cd[(arg3 + 36)]))
                staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 430] = block.timestamp + 1
                require ext_code.size(0xe55e19fb4f2d85af758950957714292dac1e25b2)
                call 0xe55e19fb4f2d85af758950957714292dac1e25b2.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args sub_d84d29ca[address(cd[(arg3 + 36)])], sub_d84d29ca[stor4], ext_call.return_data[0], 0, block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_ffa46577Address)
                staticcall sub_ffa46577Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[(arg3 + 68)]:
                    revert with 0, 
                                'insufficient BNB received',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[(2 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
                call sub_ffa46577Address with:
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 398 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if not approve(address rg1, uint256 rg2), 0xe55e19fb4f2d85af75895095:
                        revert with 0, '!safeTransfer'
                else:
                    mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeTransfer'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 430]:
                            revert with 0, '!safeTransfer'
                if stor1 + 1 != stor1:
                    revert with 0, 'ReentrancyGuard: reentrant call'
    ('eq', ('add', 1, ('stor', ('name', 'stor1', 1))), ('stor', ('name', 'stor1', 1)))
}



}
