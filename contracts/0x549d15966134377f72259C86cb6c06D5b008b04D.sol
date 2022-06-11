contract main {




// =====================  Runtime code  =====================


#
#  - sub_3ef1f7a0(?)
#
const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66


address owner;
mapping of uint8 stor1;

function sub_2a455199(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function isOperator() {
    return bool(stor1[address(msg.sender)])
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function deposit() payable {
    if eth.balance(this.address):
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66)
        call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0019d247(?) {
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
    if eth.balance(this.address):
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66)
        call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_6542e7ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
    staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 < ext_call.return_data[0]:
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'transfer of ETH failed'
}

function sub_f07d0878(?) {
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
    require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
    staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
    staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        staticcall 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'transfer of ETH failed'
}

function sub_071e41d7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    if not ext_code.hash(address(arg1)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_45b2df61(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if msg.sender == owner:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = address(arg1)
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if not arg3:
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = address(arg2)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg2)
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 27
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(arg2))
                        call address(arg2).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 196] = this.address
                        mem[(2 * ceil32(return_data.size)) + 228] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 54
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                            mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (5 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                        if not ext_code.hash(address(arg1)):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                        if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                            mem[(10 * ceil32(return_data.size)) + 360] = 0
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (4 * ceil32(return_data.size)) + 488
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg2))
                            call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                        else:
                            mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                if not mem[(4 * ceil32(return_data.size)) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg2))
                            call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _334 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _360 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _334 + (32 * _360) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _334 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _360:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < _360
                    if mem[(2 * ceil32(return_data.size)) + 256] >= arg3:
                        _744 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_744]
                        mem[_744 + 32] = address(arg1)
                        require 1 < mem[_744]
                        mem[_744 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_744 + 100] = this.address
                        mem[_744 + 132] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg2)
                        mem[_744 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _744 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_744 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_744 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                            mem[_744 + ceil32(return_data.size) + 132] = arg3
                            mem[_744 + ceil32(return_data.size) + 164] = 160
                            mem[_744 + ceil32(return_data.size) + 260] = mem[_744]
                            idx = 0
                            s = _744 + 32
                            t = _744 + ceil32(return_data.size) + 292
                            while idx < mem[_744]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_744 + ceil32(return_data.size) + 196] = this.address
                            mem[_744 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _744 + ceil32(return_data.size) + (32 * mem[_744]) + -mem[64] + 288]
                        else:
                            mem[_744 + ceil32(return_data.size) + 100] = this.address
                            mem[_744 + ceil32(return_data.size) + 132] = address(arg2)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg2)
                            mem[_744 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_744 + (2 * ceil32(return_data.size)) + 132] = address(arg2)
                            mem[_744 + (2 * ceil32(return_data.size)) + 164] = -1
                            mem[_744 + (2 * ceil32(return_data.size)) + 96] = 68
                            mem[64] = _744 + (2 * ceil32(return_data.size)) + 196
                            mem[_744 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                            mem[_744 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[_744 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[_744 + (2 * ceil32(return_data.size)) + 196 len 28]
                            mem[_744 + (2 * ceil32(return_data.size)) + 264] = 0
                            call address(arg1) with:
                                 gas gas_remaining wei
                                args mem[_744 + (2 * ceil32(return_data.size)) + 200 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_744 + (2 * ceil32(return_data.size)) + 196] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_744 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                mem[_744 + (2 * ceil32(return_data.size)) + 232] = arg3
                                mem[_744 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_744 + (2 * ceil32(return_data.size)) + 360] = mem[_744]
                                idx = 0
                                s = _744 + 32
                                t = _744 + (2 * ceil32(return_data.size)) + 392
                                while idx < mem[_744]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_744 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_744 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg2))
                                call address(arg2).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _744 + (2 * ceil32(return_data.size)) + (32 * mem[_744]) + -mem[64] + 388]
                            else:
                                mem[64] = _744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                mem[_744 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                mem[_744 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_744 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_744 + (2 * ceil32(return_data.size)) + 228])
                                    if not mem[_744 + (2 * ceil32(return_data.size)) + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_744]
                                idx = 0
                                s = _744 + 32
                                t = _744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while idx < mem[_744]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg2))
                                call address(arg2).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _744 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_744]) + -mem[64] + 389]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = address(arg1)
                mem[0] = msg.sender
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if not arg3:
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = address(arg2)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg2)
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 27
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(arg2))
                        call address(arg2).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 196] = this.address
                        mem[(2 * ceil32(return_data.size)) + 228] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 54
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                            mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (5 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                        if not ext_code.hash(address(arg1)):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                        if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
                            mem[(10 * ceil32(return_data.size)) + 360] = 0
                        call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (4 * ceil32(return_data.size)) + 488
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg2))
                            call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                        else:
                            mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                if not mem[(4 * ceil32(return_data.size)) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(arg2))
                            call address(arg2).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _335 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _361 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _335 + (32 * _361) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _335 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _361:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < _361
                    if mem[(2 * ceil32(return_data.size)) + 256] >= arg3:
                        _746 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_746]
                        mem[_746 + 32] = address(arg1)
                        mem[0] = msg.sender
                        require 1 < mem[_746]
                        mem[_746 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_746 + 100] = this.address
                        mem[_746 + 132] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg2)
                        mem[_746 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _746 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_746 + ceil32(return_data.size) + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[_746 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                            mem[_746 + ceil32(return_data.size) + 132] = arg3
                            mem[_746 + ceil32(return_data.size) + 164] = 160
                            mem[_746 + ceil32(return_data.size) + 260] = mem[_746]
                            idx = 0
                            s = _746 + 32
                            t = _746 + ceil32(return_data.size) + 292
                            while idx < mem[_746]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_746 + ceil32(return_data.size) + 196] = this.address
                            mem[_746 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _746 + ceil32(return_data.size) + (32 * mem[_746]) + -mem[64] + 288]
                        else:
                            mem[_746 + ceil32(return_data.size) + 100] = this.address
                            mem[_746 + ceil32(return_data.size) + 132] = address(arg2)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg2)
                            mem[_746 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_746 + (2 * ceil32(return_data.size)) + 132] = address(arg2)
                            mem[_746 + (2 * ceil32(return_data.size)) + 164] = -1
                            mem[_746 + (2 * ceil32(return_data.size)) + 96] = 68
                            mem[64] = _746 + (2 * ceil32(return_data.size)) + 196
                            mem[_746 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                            mem[_746 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[_746 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[_746 + (2 * ceil32(return_data.size)) + 196 len 28]
                            mem[_746 + (2 * ceil32(return_data.size)) + 264] = 0
                            call address(arg1) with:
                                 gas gas_remaining wei
                                args mem[_746 + (2 * ceil32(return_data.size)) + 200 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_746 + (2 * ceil32(return_data.size)) + 196] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_746 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                mem[_746 + (2 * ceil32(return_data.size)) + 232] = arg3
                                mem[_746 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_746 + (2 * ceil32(return_data.size)) + 360] = mem[_746]
                                idx = 0
                                s = _746 + 32
                                t = _746 + (2 * ceil32(return_data.size)) + 392
                                while idx < mem[_746]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_746 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_746 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg2))
                                call address(arg2).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _746 + (2 * ceil32(return_data.size)) + (32 * mem[_746]) + -mem[64] + 388]
                            else:
                                mem[64] = _746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                mem[_746 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                mem[_746 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_746 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_746 + (2 * ceil32(return_data.size)) + 228])
                                    if not mem[_746 + (2 * ceil32(return_data.size)) + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_746]
                                idx = 0
                                s = _746 + 32
                                t = _746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while idx < mem[_746]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg2))
                                call address(arg2).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _746 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_746]) + -mem[64] + 389]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_2c43ed75(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _79 = mem[_77]
            require mem[_77] == mem[_77]
            if mem[_77] > 0:
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if address(cd[((32 * idx) + cd[36] + 36)]) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                    _85 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require 0 < mem[_85]
                    mem[_85 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                    require 1 < mem[_85]
                    mem[_85 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_85 + 100] = this.address
                    mem[_85 + 132] = address(cd[4])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(cd[4])
                    mem[_85 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _85 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= _79:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_85 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_85 + ceil32(return_data.size) + 100] = _79
                        mem[_85 + ceil32(return_data.size) + 132] = 0
                        mem[_85 + ceil32(return_data.size) + 164] = 160
                        mem[_85 + ceil32(return_data.size) + 260] = mem[_85]
                        s = 0
                        t = _85 + 32
                        u = _85 + ceil32(return_data.size) + 292
                        while s < mem[_85]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_85 + ceil32(return_data.size) + 196] = this.address
                        mem[_85 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _85 + ceil32(return_data.size) + (32 * mem[_85]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _291 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _309 = mem[_291]
                        require mem[_291] <= test266151307()
                        require _291 + mem[_291] + 31 < _291 + return_data.size
                        _311 = mem[_291 + mem[_291]]
                        require mem[_291 + mem[_291]] <= test266151307()
                        require (32 * mem[_291 + mem[_291]]) + 32 >= 0 and _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32 <= test266151307()
                        mem[64] = _291 + ceil32(return_data.size) + (32 * mem[_291 + mem[_291]]) + 32
                        mem[_291 + ceil32(return_data.size)] = _311
                        require _309 + (32 * _311) + 32 <= return_data.size
                        s = 0
                        t = _291 + _309 + 32
                        u = _291 + ceil32(return_data.size) + 32
                        while s < _311:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                    else:
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_85 + ceil32(return_data.size) + 100] = this.address
                        mem[_85 + ceil32(return_data.size) + 132] = address(cd[4])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(cd[4])
                        mem[_85 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_85 + (2 * ceil32(return_data.size)) + 132] = address(cd[4])
                        mem[_85 + (2 * ceil32(return_data.size)) + 164] = -1
                        mem[_85 + (2 * ceil32(return_data.size)) + 96] = 68
                        mem[64] = _85 + (2 * ceil32(return_data.size)) + 196
                        mem[_85 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(cd[4]) << 64
                        if not ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _85 + (2 * ceil32(return_data.size)) + 196] = mem[s + _85 + (2 * ceil32(return_data.size)) + 128]
                            s = s + 32
                            continue 
                        mem[_85 + (2 * ceil32(return_data.size)) + 264] = 0
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_85 + (2 * ceil32(return_data.size)) + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_85 + (2 * ceil32(return_data.size)) + 200 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_85 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_85 + (2 * ceil32(return_data.size)) + 200] = _79
                                mem[_85 + (2 * ceil32(return_data.size)) + 232] = 0
                                mem[_85 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_85 + (2 * ceil32(return_data.size)) + 360] = mem[_85]
                                s = 0
                                t = _85 + 32
                                u = _85 + (2 * ceil32(return_data.size)) + 392
                                while s < mem[_85]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_85 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_85 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _85 + (2 * ceil32(return_data.size)) + (32 * mem[_85]) + -mem[64] + 388]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _515 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _531 = mem[_515]
                                require mem[_515] <= test266151307()
                                require _515 + mem[_515] + 31 < _515 + return_data.size
                                _547 = mem[_515 + mem[_515]]
                                require mem[_515 + mem[_515]] <= test266151307()
                                require (32 * mem[_515 + mem[_515]]) + 32 >= 0 and _515 + ceil32(return_data.size) + (32 * mem[_515 + mem[_515]]) + 32 <= test266151307()
                                mem[64] = _515 + ceil32(return_data.size) + (32 * mem[_515 + mem[_515]]) + 32
                                mem[_515 + ceil32(return_data.size)] = _547
                                require _531 + (32 * _547) + 32 <= return_data.size
                                s = 0
                                t = _515 + _531 + 32
                                u = _515 + ceil32(return_data.size) + 32
                                while s < _547:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_85 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_85 + (2 * ceil32(return_data.size)) + 200] = _79
                                mem[_85 + (2 * ceil32(return_data.size)) + 232] = 0
                                mem[_85 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_85 + (2 * ceil32(return_data.size)) + 360] = mem[_85]
                                s = 0
                                t = _85 + 32
                                u = _85 + (2 * ceil32(return_data.size)) + 392
                                while s < mem[_85]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_85 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_85 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _85 + (2 * ceil32(return_data.size)) + (32 * mem[_85]) + -mem[64] + 388]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _516 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _532 = mem[_516]
                                require mem[_516] <= test266151307()
                                require _516 + mem[_516] + 31 < _516 + return_data.size
                                _548 = mem[_516 + mem[_516]]
                                require mem[_516 + mem[_516]] <= test266151307()
                                require (32 * mem[_516 + mem[_516]]) + 32 >= 0 and _516 + ceil32(return_data.size) + (32 * mem[_516 + mem[_516]]) + 32 <= test266151307()
                                mem[64] = _516 + ceil32(return_data.size) + (32 * mem[_516 + mem[_516]]) + 32
                                mem[_516 + ceil32(return_data.size)] = _548
                                require _532 + (32 * _548) + 32 <= return_data.size
                                s = 0
                                t = _516 + _532 + 32
                                u = _516 + ceil32(return_data.size) + 32
                                while s < _548:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                        else:
                            mem[64] = _85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                            mem[_85 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                            mem[_85 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = _79
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_85]
                                s = 0
                                t = _85 + 32
                                u = _85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while s < mem[_85]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_85]) + -mem[64] + 389]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _517 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _533 = mem[_517]
                                require mem[_517] <= test266151307()
                                require _517 + mem[_517] + 31 < _517 + return_data.size
                                _549 = mem[_517 + mem[_517]]
                                require mem[_517 + mem[_517]] <= test266151307()
                                require (32 * mem[_517 + mem[_517]]) + 32 >= 0 and _517 + ceil32(return_data.size) + (32 * mem[_517 + mem[_517]]) + 32 <= test266151307()
                                mem[64] = _517 + ceil32(return_data.size) + (32 * mem[_517 + mem[_517]]) + 32
                                mem[_517 + ceil32(return_data.size)] = _549
                                require _533 + (32 * _549) + 32 <= return_data.size
                                s = 0
                                t = _517 + _533 + 32
                                u = _517 + ceil32(return_data.size) + 32
                                while s < _549:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                            else:
                                require return_data.size >= 32
                                require mem[_85 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_85 + (2 * ceil32(return_data.size)) + 228])
                                if not mem[_85 + (2 * ceil32(return_data.size)) + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = _79
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_85]
                                s = 0
                                t = _85 + 32
                                u = _85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while s < mem[_85]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _85 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_85]) + -mem[64] + 389]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _518 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _534 = mem[_518]
                                require mem[_518] <= test266151307()
                                require _518 + mem[_518] + 31 < _518 + return_data.size
                                _550 = mem[_518 + mem[_518]]
                                require mem[_518 + mem[_518]] <= test266151307()
                                require (32 * mem[_518 + mem[_518]]) + 32 >= 0 and _518 + ceil32(return_data.size) + (32 * mem[_518 + mem[_518]]) + 32 <= test266151307()
                                mem[64] = _518 + ceil32(return_data.size) + (32 * mem[_518 + mem[_518]]) + 32
                                mem[_518 + ceil32(return_data.size)] = _550
                                require _534 + (32 * _550) + 32 <= return_data.size
                                s = 0
                                t = _518 + _534 + 32
                                u = _518 + ceil32(return_data.size) + 32
                                while s < _550:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _80 = mem[_78]
            require mem[_78] == mem[_78]
            if mem[_78] > 0:
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if address(cd[((32 * idx) + cd[36] + 36)]) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                    _86 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require 0 < mem[_86]
                    mem[_86 + 32] = address(cd[((32 * idx) + cd[36] + 36)])
                    require 1 < mem[_86]
                    mem[_86 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    mem[_86 + 100] = this.address
                    mem[_86 + 132] = address(cd[4])
                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[36] + 36)]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(cd[4])
                    mem[_86 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _86 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= _80:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_86 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[_86 + ceil32(return_data.size) + 100] = _80
                        mem[_86 + ceil32(return_data.size) + 132] = 0
                        mem[_86 + ceil32(return_data.size) + 164] = 160
                        mem[_86 + ceil32(return_data.size) + 260] = mem[_86]
                        s = 0
                        t = _86 + 32
                        u = _86 + ceil32(return_data.size) + 292
                        while s < mem[_86]:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_86 + ceil32(return_data.size) + 196] = this.address
                        mem[_86 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args _80, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[_86 + ceil32(return_data.size) + 260 len (32 * mem[_86]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_86 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _86 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _310 = mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32
                        require mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 <= test266151307()
                        require _86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 127 < _86 + ceil32(return_data.size) + return_data.size + 96
                        _316 = mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96]
                        require mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96] <= test266151307()
                        require (32 * mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96]) + 32 >= 0 and _86 + (2 * ceil32(return_data.size)) + (32 * mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96]) + 128 <= test266151307()
                        mem[64] = _86 + (2 * ceil32(return_data.size)) + (32 * mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96]) + 128
                        mem[_86 + (2 * ceil32(return_data.size)) + 96] = mem[_86 + ceil32(return_data.size) + mem[_86 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _80) >> 32 + 96]
                        require _310 + (32 * _316) + 32 <= return_data.size
                        s = 0
                        t = _86 + ceil32(return_data.size) + _310 + 128
                        u = _86 + (2 * ceil32(return_data.size)) + 128
                        while s < _316:
                            require mem[t] == mem[t]
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                    else:
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[_86 + ceil32(return_data.size) + 100] = this.address
                        mem[_86 + ceil32(return_data.size) + 132] = address(cd[4])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(cd[4])
                        mem[_86 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_86 + (2 * ceil32(return_data.size)) + 132] = address(cd[4])
                        mem[_86 + (2 * ceil32(return_data.size)) + 164] = -1
                        mem[_86 + (2 * ceil32(return_data.size)) + 96] = 68
                        mem[64] = _86 + (2 * ceil32(return_data.size)) + 196
                        mem[_86 + (2 * ceil32(return_data.size)) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(cd[4]) << 64
                        if not ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(cd[((32 * idx) + cd[36] + 36)])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _86 + (2 * ceil32(return_data.size)) + 196] = mem[s + _86 + (2 * ceil32(return_data.size)) + 128]
                            s = s + 32
                            continue 
                        mem[_86 + (2 * ceil32(return_data.size)) + 264] = 0
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4] with:
                             gas gas_remaining wei
                            args mem[_86 + (2 * ceil32(return_data.size)) + 200 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not mem[96]:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_86 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_86 + (2 * ceil32(return_data.size)) + 200] = _80
                                mem[_86 + (2 * ceil32(return_data.size)) + 232] = 0
                                mem[_86 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_86 + (2 * ceil32(return_data.size)) + 360] = mem[_86]
                                s = 0
                                t = _86 + 32
                                u = _86 + (2 * ceil32(return_data.size)) + 392
                                while s < mem[_86]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_86 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_86 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _80, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[_86 + (2 * ceil32(return_data.size)) + 360 len (32 * mem[_86]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_86 + (2 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + 196
                                require return_data.size >= 32
                                _539 = mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32
                                require mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 <= test266151307()
                                require _86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 227 < _86 + (2 * ceil32(return_data.size)) + return_data.size + 196
                                _555 = mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]
                                require mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196] <= test266151307()
                                require (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 32 >= 0 and _86 + (4 * ceil32(return_data.size)) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 228 <= test266151307()
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 228
                                mem[_86 + (4 * ceil32(return_data.size)) + 196] = _555
                                require _539 + (32 * _555) + 32 <= return_data.size
                                s = 0
                                t = _86 + (2 * ceil32(return_data.size)) + _539 + 228
                                u = _86 + (4 * ceil32(return_data.size)) + 228
                                while s < _555:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_86 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_86 + (2 * ceil32(return_data.size)) + 200] = _80
                                mem[_86 + (2 * ceil32(return_data.size)) + 232] = 0
                                mem[_86 + (2 * ceil32(return_data.size)) + 264] = 160
                                mem[_86 + (2 * ceil32(return_data.size)) + 360] = mem[_86]
                                s = 0
                                t = _86 + 32
                                u = _86 + (2 * ceil32(return_data.size)) + 392
                                while s < mem[_86]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_86 + (2 * ceil32(return_data.size)) + 296] = this.address
                                mem[_86 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _80, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[_86 + (2 * ceil32(return_data.size)) + 360 len (32 * mem[_86]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_86 + (2 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + 196
                                require return_data.size >= 32
                                _540 = mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32
                                require mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 <= test266151307()
                                require _86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 227 < _86 + (2 * ceil32(return_data.size)) + return_data.size + 196
                                _556 = mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]
                                require mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196] <= test266151307()
                                require (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 32 >= 0 and _86 + (4 * ceil32(return_data.size)) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 228 <= test266151307()
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + mem[_86 + (2 * ceil32(return_data.size)) + 196 len 4], Mask(224, 32, _80) >> 32 + 196]) + 228
                                mem[_86 + (4 * ceil32(return_data.size)) + 196] = _556
                                require _540 + (32 * _556) + 32 <= return_data.size
                                s = 0
                                t = _86 + (2 * ceil32(return_data.size)) + _540 + 228
                                u = _86 + (4 * ceil32(return_data.size)) + 228
                                while s < _556:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                        else:
                            mem[64] = _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                            mem[_86 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                            mem[_86 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = _80
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_86]
                                s = 0
                                t = _86 + 32
                                u = _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while s < mem[_86]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _80, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len (32 * mem[_86]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                require return_data.size >= 32
                                _541 = mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32
                                require mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 <= test266151307()
                                require _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 228 < _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
                                _557 = mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]
                                require mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197] <= test266151307()
                                require (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 32 >= 0 and _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 229 <= test266151307()
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 229
                                mem[_86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = _557
                                require _541 + (32 * _557) + 32 <= return_data.size
                                s = 0
                                t = _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _541 + 229
                                u = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                                while s < _557:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                            else:
                                require return_data.size >= 32
                                require mem[_86 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_86 + (2 * ceil32(return_data.size)) + 228])
                                if not mem[_86 + (2 * ceil32(return_data.size)) + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = _80
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = 0
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_86]
                                s = 0
                                t = _86 + 32
                                u = _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                while s < mem[_86]:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _80, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len (32 * mem[_86]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                require return_data.size >= 32
                                _542 = mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32
                                require mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 <= test266151307()
                                require _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 228 < _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
                                _558 = mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]
                                require mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197] <= test266151307()
                                require (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 32 >= 0 and _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 229 <= test266151307()
                                mem[64] = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], Mask(224, 32, _80) >> 32 + 197]) + 229
                                mem[_86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = _558
                                require _542 + (32 * _558) + 32 <= return_data.size
                                s = 0
                                t = _86 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _542 + 229
                                u = _86 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                                while s < _558:
                                    require mem[t] == mem[t]
                                    mem[u] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
            idx = idx + 1
            continue 
}

function sub_94b987ef(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    if msg.sender == owner:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if arg2 <= ext_call.return_data[0]:
                if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = address(arg1)
                    mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    if not arg4:
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = address(arg3)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg3)
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= arg2:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 27
                                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 192
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2
                            mem[(2 * ceil32(return_data.size)) + 228] = arg4
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _390 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _410 = mem[_390]
                            require mem[_390] <= test266151307()
                            require _390 + mem[_390] + 31 < _390 + return_data.size
                            _416 = mem[_390 + mem[_390]]
                            require mem[_390 + mem[_390]] <= test266151307()
                            require (32 * mem[_390 + mem[_390]]) + 32 >= 0 and _390 + ceil32(return_data.size) + (32 * mem[_390 + mem[_390]]) + 32 <= test266151307()
                            mem[64] = _390 + ceil32(return_data.size) + (32 * mem[_390 + mem[_390]]) + 32
                            mem[_390 + ceil32(return_data.size)] = _416
                            require _410 + (32 * _416) + 32 <= return_data.size
                            idx = 0
                            s = _390 + _410 + 32
                            t = _390 + ceil32(return_data.size) + 32
                            while idx < _416:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[(2 * ceil32(return_data.size)) + 196] = this.address
                            mem[(2 * ceil32(return_data.size)) + 228] = address(arg3)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 54
                                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                                mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 192
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 260] = -1
                            mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                            if floor32((5 * ceil32(return_data.size)) + 99) <= (5 * ceil32(return_data.size)) + 68:
                                call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _962 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _978 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _962 + (32 * _978) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _962 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _978:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _963 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _979 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _963 + (32 * _979) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _963 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _979:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _964 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _980 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _964 + (32 * _980) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _964 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _980:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _965 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _981 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _965 + (32 * _981) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _965 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _981:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                            else:
                                mem[(10 * ceil32(return_data.size)) + 360] = 0
                                call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _966 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _982 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _966 + (32 * _982) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _966 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _982:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _967 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _983 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _967 + (32 * _983) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _967 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _983:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _968 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _984 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _968 + (32 * _984) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _968 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _984:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _969 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _985 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _969 + (32 * _985) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _969 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _985:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                    else:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg2
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _326 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _352 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _326 + (32 * _352) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _326 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _352:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < _352
                        if mem[(2 * ceil32(return_data.size)) + 256] >= arg4:
                            _918 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_918]
                            mem[_918 + 32] = address(arg1)
                            require 1 < mem[_918]
                            mem[_918 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                            mem[_918 + 100] = this.address
                            mem[_918 + 132] = address(arg3)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg3)
                            mem[_918 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _918 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] >= arg2:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_918 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_918 + ceil32(return_data.size) + 100] = arg2
                                mem[_918 + ceil32(return_data.size) + 132] = arg4
                                mem[_918 + ceil32(return_data.size) + 164] = 160
                                mem[_918 + ceil32(return_data.size) + 260] = mem[_918]
                                idx = 0
                                s = _918 + 32
                                t = _918 + ceil32(return_data.size) + 292
                                while idx < mem[_918]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_918 + ceil32(return_data.size) + 196] = this.address
                                mem[_918 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _918 + ceil32(return_data.size) + (32 * mem[_918]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1412 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1430 = mem[_1412]
                                require mem[_1412] <= test266151307()
                                require _1412 + mem[_1412] + 31 < _1412 + return_data.size
                                _1432 = mem[_1412 + mem[_1412]]
                                require mem[_1412 + mem[_1412]] <= test266151307()
                                require (32 * mem[_1412 + mem[_1412]]) + 32 >= 0 and _1412 + ceil32(return_data.size) + (32 * mem[_1412 + mem[_1412]]) + 32 <= test266151307()
                                mem[64] = _1412 + ceil32(return_data.size) + (32 * mem[_1412 + mem[_1412]]) + 32
                                mem[_1412 + ceil32(return_data.size)] = _1432
                                require _1430 + (32 * _1432) + 32 <= return_data.size
                                idx = 0
                                s = _1412 + _1430 + 32
                                t = _1412 + ceil32(return_data.size) + 32
                                while idx < _1432:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                mem[_918 + ceil32(return_data.size) + 100] = this.address
                                mem[_918 + ceil32(return_data.size) + 132] = address(arg3)
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(arg3)
                                mem[_918 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_918 + (2 * ceil32(return_data.size)) + 132] = address(arg3)
                                mem[_918 + (2 * ceil32(return_data.size)) + 164] = -1
                                mem[_918 + (2 * ceil32(return_data.size)) + 96] = 68
                                mem[64] = _918 + (2 * ceil32(return_data.size)) + 196
                                mem[_918 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                                mem[_918 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                                if not ext_code.hash(address(arg1)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[_918 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, mem[_918 + (2 * ceil32(return_data.size)) + 196 len 28]
                                mem[_918 + (2 * ceil32(return_data.size)) + 264] = 0
                                call address(arg1) with:
                                     gas gas_remaining wei
                                    args mem[_918 + (2 * ceil32(return_data.size)) + 200 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_918 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_918 + (2 * ceil32(return_data.size)) + 200] = arg2
                                        mem[_918 + (2 * ceil32(return_data.size)) + 232] = arg4
                                        mem[_918 + (2 * ceil32(return_data.size)) + 264] = 160
                                        mem[_918 + (2 * ceil32(return_data.size)) + 360] = mem[_918]
                                        idx = 0
                                        s = _918 + 32
                                        t = _918 + (2 * ceil32(return_data.size)) + 392
                                        while idx < mem[_918]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_918 + (2 * ceil32(return_data.size)) + 296] = this.address
                                        mem[_918 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _918 + (2 * ceil32(return_data.size)) + (32 * mem[_918]) + -mem[64] + 388]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1636 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1652 = mem[_1636]
                                        require mem[_1636] <= test266151307()
                                        require _1636 + mem[_1636] + 31 < _1636 + return_data.size
                                        _1668 = mem[_1636 + mem[_1636]]
                                        require mem[_1636 + mem[_1636]] <= test266151307()
                                        require (32 * mem[_1636 + mem[_1636]]) + 32 >= 0 and _1636 + ceil32(return_data.size) + (32 * mem[_1636 + mem[_1636]]) + 32 <= test266151307()
                                        mem[64] = _1636 + ceil32(return_data.size) + (32 * mem[_1636 + mem[_1636]]) + 32
                                        mem[_1636 + ceil32(return_data.size)] = _1668
                                        require _1652 + (32 * _1668) + 32 <= return_data.size
                                        idx = 0
                                        s = _1636 + _1652 + 32
                                        t = _1636 + ceil32(return_data.size) + 32
                                        while idx < _1668:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_918 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_918 + (2 * ceil32(return_data.size)) + 200] = arg2
                                        mem[_918 + (2 * ceil32(return_data.size)) + 232] = arg4
                                        mem[_918 + (2 * ceil32(return_data.size)) + 264] = 160
                                        mem[_918 + (2 * ceil32(return_data.size)) + 360] = mem[_918]
                                        idx = 0
                                        s = _918 + 32
                                        t = _918 + (2 * ceil32(return_data.size)) + 392
                                        while idx < mem[_918]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_918 + (2 * ceil32(return_data.size)) + 296] = this.address
                                        mem[_918 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _918 + (2 * ceil32(return_data.size)) + (32 * mem[_918]) + -mem[64] + 388]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1637 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1653 = mem[_1637]
                                        require mem[_1637] <= test266151307()
                                        require _1637 + mem[_1637] + 31 < _1637 + return_data.size
                                        _1669 = mem[_1637 + mem[_1637]]
                                        require mem[_1637 + mem[_1637]] <= test266151307()
                                        require (32 * mem[_1637 + mem[_1637]]) + 32 >= 0 and _1637 + ceil32(return_data.size) + (32 * mem[_1637 + mem[_1637]]) + 32 <= test266151307()
                                        mem[64] = _1637 + ceil32(return_data.size) + (32 * mem[_1637 + mem[_1637]]) + 32
                                        mem[_1637 + ceil32(return_data.size)] = _1669
                                        require _1653 + (32 * _1669) + 32 <= return_data.size
                                        idx = 0
                                        s = _1637 + _1653 + 32
                                        t = _1637 + ceil32(return_data.size) + 32
                                        while idx < _1669:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[64] = _918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                    mem[_918 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                    mem[_918 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = arg2
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg4
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_918]
                                        idx = 0
                                        s = _918 + 32
                                        t = _918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                        while idx < mem[_918]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_918]) + -mem[64] + 389]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1638 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1654 = mem[_1638]
                                        require mem[_1638] <= test266151307()
                                        require _1638 + mem[_1638] + 31 < _1638 + return_data.size
                                        _1670 = mem[_1638 + mem[_1638]]
                                        require mem[_1638 + mem[_1638]] <= test266151307()
                                        require (32 * mem[_1638 + mem[_1638]]) + 32 >= 0 and _1638 + ceil32(return_data.size) + (32 * mem[_1638 + mem[_1638]]) + 32 <= test266151307()
                                        mem[64] = _1638 + ceil32(return_data.size) + (32 * mem[_1638 + mem[_1638]]) + 32
                                        mem[_1638 + ceil32(return_data.size)] = _1670
                                        require _1654 + (32 * _1670) + 32 <= return_data.size
                                        idx = 0
                                        s = _1638 + _1654 + 32
                                        t = _1638 + ceil32(return_data.size) + 32
                                        while idx < _1670:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[_918 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_918 + (2 * ceil32(return_data.size)) + 228])
                                        if not mem[_918 + (2 * ceil32(return_data.size)) + 228]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = arg2
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg4
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_918]
                                        idx = 0
                                        s = _918 + 32
                                        t = _918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                        while idx < mem[_918]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                        mem[_918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _918 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_918]) + -mem[64] + 389]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1639 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1655 = mem[_1639]
                                        require mem[_1639] <= test266151307()
                                        require _1639 + mem[_1639] + 31 < _1639 + return_data.size
                                        _1671 = mem[_1639 + mem[_1639]]
                                        require mem[_1639 + mem[_1639]] <= test266151307()
                                        require (32 * mem[_1639 + mem[_1639]]) + 32 >= 0 and _1639 + ceil32(return_data.size) + (32 * mem[_1639 + mem[_1639]]) + 32 <= test266151307()
                                        mem[64] = _1639 + ceil32(return_data.size) + (32 * mem[_1639 + mem[_1639]]) + 32
                                        mem[_1639 + ceil32(return_data.size)] = _1671
                                        require _1655 + (32 * _1671) + 32 <= return_data.size
                                        idx = 0
                                        s = _1639 + _1655 + 32
                                        t = _1639 + ceil32(return_data.size) + 32
                                        while idx < _1671:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
    else:
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if arg2 <= ext_call.return_data[0]:
                if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                    mem[ceil32(return_data.size) + 96] = 2
                    mem[ceil32(return_data.size) + 128] = address(arg1)
                    mem[0] = msg.sender
                    mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                    if not arg4:
                        mem[ceil32(return_data.size) + 196] = this.address
                        mem[ceil32(return_data.size) + 228] = address(arg3)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg3)
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= arg2:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 196] = 32
                                mem[(2 * ceil32(return_data.size)) + 228] = 27
                                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 192
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = arg2
                            mem[(2 * ceil32(return_data.size)) + 228] = arg4
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 128
                            t = (2 * ceil32(return_data.size)) + 388
                            while idx < mem[ceil32(return_data.size) + 96]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = this.address
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg3))
                            call address(arg3).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _395 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _412 = mem[_395]
                            require mem[_395] <= test266151307()
                            require _395 + mem[_395] + 31 < _395 + return_data.size
                            _421 = mem[_395 + mem[_395]]
                            require mem[_395 + mem[_395]] <= test266151307()
                            require (32 * mem[_395 + mem[_395]]) + 32 >= 0 and _395 + ceil32(return_data.size) + (32 * mem[_395 + mem[_395]]) + 32 <= test266151307()
                            mem[64] = _395 + ceil32(return_data.size) + (32 * mem[_395 + mem[_395]]) + 32
                            mem[_395 + ceil32(return_data.size)] = _421
                            require _412 + (32 * _421) + 32 <= return_data.size
                            idx = 0
                            s = _395 + _412 + 32
                            t = _395 + ceil32(return_data.size) + 32
                            while idx < _421:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[(2 * ceil32(return_data.size)) + 196] = this.address
                            mem[(2 * ceil32(return_data.size)) + 228] = address(arg3)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 32
                                mem[(4 * ceil32(return_data.size)) + 228] = 54
                                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                                mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 192
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 260] = -1
                            mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                            if floor32((5 * ceil32(return_data.size)) + 99) <= (5 * ceil32(return_data.size)) + 68:
                                call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _970 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _986 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _970 + (32 * _986) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _970 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _986:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _971 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _987 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _971 + (32 * _987) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _971 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _987:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _972 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _988 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _972 + (32 * _988) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _972 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _988:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _973 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _989 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _973 + (32 * _989) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _973 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _989:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                            else:
                                mem[(10 * ceil32(return_data.size)) + 360] = 0
                                call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _974 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _990 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _974 + (32 * _990) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _974 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _990:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 296] = arg2
                                        mem[(4 * ceil32(return_data.size)) + 328] = arg4
                                        mem[(4 * ceil32(return_data.size)) + 360] = 160
                                        mem[(4 * ceil32(return_data.size)) + 456] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + 488
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 292
                                        require return_data.size >= 32
                                        _975 = mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                        _991 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]) + 324 <= test266151307()
                                        mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], Mask(224, 32, arg2) >> 32 + 292]
                                        require _975 + (32 * _991) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + _975 + 324
                                        t = (6 * ceil32(return_data.size)) + 324
                                        while idx < _991:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _976 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _992 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _976 + (32 * _992) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _976 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _992:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg4
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 128
                                        t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args arg2, arg4, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                        require return_data.size >= 32
                                        _977 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                        _993 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293] <= test266151307()
                                        require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325 <= test266151307()
                                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]) + 325
                                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], Mask(224, 32, arg2) >> 32 + 293]
                                        require _977 + (32 * _993) + 32 <= return_data.size
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _977 + 325
                                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                        while idx < _993:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                    else:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg2
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(arg3))
                        staticcall address(arg3).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _327 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                        _353 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= test266151307()
                        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224 <= test266151307()
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 224
                        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        require _327 + (32 * _353) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _327 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _353:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require 1 < _353
                        if mem[(2 * ceil32(return_data.size)) + 256] >= arg4:
                            _920 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require 0 < mem[_920]
                            mem[_920 + 32] = address(arg1)
                            mem[0] = msg.sender
                            require 1 < mem[_920]
                            mem[_920 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                            mem[_920 + 100] = this.address
                            mem[_920 + 132] = address(arg3)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg3)
                            mem[_920 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _920 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] >= arg2:
                                if block.timestamp + (24 * 3600) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[_920 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_920 + ceil32(return_data.size) + 100] = arg2
                                mem[_920 + ceil32(return_data.size) + 132] = arg4
                                mem[_920 + ceil32(return_data.size) + 164] = 160
                                mem[_920 + ceil32(return_data.size) + 260] = mem[_920]
                                idx = 0
                                s = _920 + 32
                                t = _920 + ceil32(return_data.size) + 292
                                while idx < mem[_920]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_920 + ceil32(return_data.size) + 196] = this.address
                                mem[_920 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                                require ext_code.size(address(arg3))
                                call address(arg3).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _920 + ceil32(return_data.size) + (32 * mem[_920]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1417 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1431 = mem[_1417]
                                require mem[_1417] <= test266151307()
                                require _1417 + mem[_1417] + 31 < _1417 + return_data.size
                                _1437 = mem[_1417 + mem[_1417]]
                                require mem[_1417 + mem[_1417]] <= test266151307()
                                require (32 * mem[_1417 + mem[_1417]]) + 32 >= 0 and _1417 + ceil32(return_data.size) + (32 * mem[_1417 + mem[_1417]]) + 32 <= test266151307()
                                mem[64] = _1417 + ceil32(return_data.size) + (32 * mem[_1417 + mem[_1417]]) + 32
                                mem[_1417 + ceil32(return_data.size)] = _1437
                                require _1431 + (32 * _1437) + 32 <= return_data.size
                                idx = 0
                                s = _1417 + _1431 + 32
                                t = _1417 + ceil32(return_data.size) + 32
                                while idx < _1437:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                            else:
                                mem[_920 + ceil32(return_data.size) + 100] = this.address
                                mem[_920 + ceil32(return_data.size) + 132] = address(arg3)
                                require ext_code.size(address(arg1))
                                staticcall address(arg1).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args address(this.address), address(arg3)
                                mem[_920 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                if ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                                mem[_920 + (2 * ceil32(return_data.size)) + 132] = address(arg3)
                                mem[_920 + (2 * ceil32(return_data.size)) + 164] = -1
                                mem[_920 + (2 * ceil32(return_data.size)) + 96] = 68
                                mem[64] = _920 + (2 * ceil32(return_data.size)) + 196
                                mem[_920 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg3) << 64
                                mem[_920 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                                if not ext_code.hash(address(arg1)):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[_920 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg3) << 64, 0, -1, mem[_920 + (2 * ceil32(return_data.size)) + 196 len 28]
                                mem[_920 + (2 * ceil32(return_data.size)) + 264] = 0
                                call address(arg1) with:
                                     gas gas_remaining wei
                                    args mem[_920 + (2 * ceil32(return_data.size)) + 200 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not ext_call.return_data[0]:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_920 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_920 + (2 * ceil32(return_data.size)) + 200] = arg2
                                        mem[_920 + (2 * ceil32(return_data.size)) + 232] = arg4
                                        mem[_920 + (2 * ceil32(return_data.size)) + 264] = 160
                                        mem[_920 + (2 * ceil32(return_data.size)) + 360] = mem[_920]
                                        idx = 0
                                        s = _920 + 32
                                        t = _920 + (2 * ceil32(return_data.size)) + 392
                                        while idx < mem[_920]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_920 + (2 * ceil32(return_data.size)) + 296] = this.address
                                        mem[_920 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _920 + (2 * ceil32(return_data.size)) + (32 * mem[_920]) + -mem[64] + 388]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1644 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1660 = mem[_1644]
                                        require mem[_1644] <= test266151307()
                                        require _1644 + mem[_1644] + 31 < _1644 + return_data.size
                                        _1676 = mem[_1644 + mem[_1644]]
                                        require mem[_1644 + mem[_1644]] <= test266151307()
                                        require (32 * mem[_1644 + mem[_1644]]) + 32 >= 0 and _1644 + ceil32(return_data.size) + (32 * mem[_1644 + mem[_1644]]) + 32 <= test266151307()
                                        mem[64] = _1644 + ceil32(return_data.size) + (32 * mem[_1644 + mem[_1644]]) + 32
                                        mem[_1644 + ceil32(return_data.size)] = _1676
                                        require _1660 + (32 * _1676) + 32 <= return_data.size
                                        idx = 0
                                        s = _1644 + _1660 + 32
                                        t = _1644 + ceil32(return_data.size) + 32
                                        while idx < _1676:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require ext_call.return_data[0] >= 32
                                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                        if not 0, mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_920 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_920 + (2 * ceil32(return_data.size)) + 200] = arg2
                                        mem[_920 + (2 * ceil32(return_data.size)) + 232] = arg4
                                        mem[_920 + (2 * ceil32(return_data.size)) + 264] = 160
                                        mem[_920 + (2 * ceil32(return_data.size)) + 360] = mem[_920]
                                        idx = 0
                                        s = _920 + 32
                                        t = _920 + (2 * ceil32(return_data.size)) + 392
                                        while idx < mem[_920]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_920 + (2 * ceil32(return_data.size)) + 296] = this.address
                                        mem[_920 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _920 + (2 * ceil32(return_data.size)) + (32 * mem[_920]) + -mem[64] + 388]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1645 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1661 = mem[_1645]
                                        require mem[_1645] <= test266151307()
                                        require _1645 + mem[_1645] + 31 < _1645 + return_data.size
                                        _1677 = mem[_1645 + mem[_1645]]
                                        require mem[_1645 + mem[_1645]] <= test266151307()
                                        require (32 * mem[_1645 + mem[_1645]]) + 32 >= 0 and _1645 + ceil32(return_data.size) + (32 * mem[_1645 + mem[_1645]]) + 32 <= test266151307()
                                        mem[64] = _1645 + ceil32(return_data.size) + (32 * mem[_1645 + mem[_1645]]) + 32
                                        mem[_1645 + ceil32(return_data.size)] = _1677
                                        require _1661 + (32 * _1677) + 32 <= return_data.size
                                        idx = 0
                                        s = _1645 + _1661 + 32
                                        t = _1645 + ceil32(return_data.size) + 32
                                        while idx < _1677:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                else:
                                    mem[64] = _920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                    mem[_920 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                    mem[_920 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = arg2
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg4
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_920]
                                        idx = 0
                                        s = _920 + 32
                                        t = _920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                        while idx < mem[_920]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_920]) + -mem[64] + 389]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1646 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1662 = mem[_1646]
                                        require mem[_1646] <= test266151307()
                                        require _1646 + mem[_1646] + 31 < _1646 + return_data.size
                                        _1678 = mem[_1646 + mem[_1646]]
                                        require mem[_1646 + mem[_1646]] <= test266151307()
                                        require (32 * mem[_1646 + mem[_1646]]) + 32 >= 0 and _1646 + ceil32(return_data.size) + (32 * mem[_1646 + mem[_1646]]) + 32 <= test266151307()
                                        mem[64] = _1646 + ceil32(return_data.size) + (32 * mem[_1646 + mem[_1646]]) + 32
                                        mem[_1646 + ceil32(return_data.size)] = _1678
                                        require _1662 + (32 * _1678) + 32 <= return_data.size
                                        idx = 0
                                        s = _1646 + _1662 + 32
                                        t = _1646 + ceil32(return_data.size) + 32
                                        while idx < _1678:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                    else:
                                        require return_data.size >= 32
                                        require mem[_920 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_920 + (2 * ceil32(return_data.size)) + 228])
                                        if not mem[_920 + (2 * ceil32(return_data.size)) + 228]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if block.timestamp + (24 * 3600) < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = arg2
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg4
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_920]
                                        idx = 0
                                        s = _920 + 32
                                        t = _920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                        while idx < mem[_920]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                        mem[_920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                        require ext_code.size(address(arg3))
                                        call address(arg3).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _920 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_920]) + -mem[64] + 389]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1647 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1663 = mem[_1647]
                                        require mem[_1647] <= test266151307()
                                        require _1647 + mem[_1647] + 31 < _1647 + return_data.size
                                        _1679 = mem[_1647 + mem[_1647]]
                                        require mem[_1647 + mem[_1647]] <= test266151307()
                                        require (32 * mem[_1647 + mem[_1647]]) + 32 >= 0 and _1647 + ceil32(return_data.size) + (32 * mem[_1647 + mem[_1647]]) + 32 <= test266151307()
                                        mem[64] = _1647 + ceil32(return_data.size) + (32 * mem[_1647 + mem[_1647]]) + 32
                                        mem[_1647 + ceil32(return_data.size)] = _1679
                                        require _1663 + (32 * _1679) + 32 <= return_data.size
                                        idx = 0
                                        s = _1647 + _1663 + 32
                                        t = _1647 + ceil32(return_data.size) + 32
                                        while idx < _1679:
                                            require mem[s] == mem[s]
                                            mem[t] = mem[s]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
}

function sub_b5556b87(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if msg.sender == owner:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = address(arg1)
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if not arg3:
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = address(arg2)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg2)
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 27
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(arg2))
                        call address(arg2).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _418 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _438 = mem[_418]
                        require mem[_418] <= test266151307()
                        require _418 + mem[_418] + 31 < _418 + return_data.size
                        _444 = mem[_418 + mem[_418]]
                        require mem[_418 + mem[_418]] <= test266151307()
                        require (32 * mem[_418 + mem[_418]]) + 32 >= 0 and _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32 <= test266151307()
                        mem[64] = _418 + ceil32(return_data.size) + (32 * mem[_418 + mem[_418]]) + 32
                        mem[_418 + ceil32(return_data.size)] = _444
                        require _438 + (32 * _444) + 32 <= return_data.size
                        idx = 0
                        s = _418 + _438 + 32
                        t = _418 + ceil32(return_data.size) + 32
                        while idx < _444:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[(2 * ceil32(return_data.size)) + 196] = this.address
                        mem[(2 * ceil32(return_data.size)) + 228] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 54
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                            mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (5 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 260] = -1
                        mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                        if not ext_code.hash(address(arg1)):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                        if floor32((5 * ceil32(return_data.size)) + 99) <= (5 * ceil32(return_data.size)) + 68:
                            call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _990 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1006 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _990 + (32 * _1006) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _990 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1006:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _991 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1007 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _991 + (32 * _1007) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _991 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1007:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _992 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1008 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _992 + (32 * _1008) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _992 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1008:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _993 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1009 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _993 + (32 * _1009) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _993 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1009:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                        else:
                            mem[(10 * ceil32(return_data.size)) + 360] = 0
                            call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _994 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1010 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _994 + (32 * _1010) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _994 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1010:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _995 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1011 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _995 + (32 * _1011) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _995 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1011:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _996 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1012 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _996 + (32 * _1012) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _996 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1012:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _997 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1013 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _997 + (32 * _1013) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _997 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1013:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                else:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _354 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _380 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _354 + (32 * _380) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _354 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _380:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < _380
                    if mem[(2 * ceil32(return_data.size)) + 256] >= arg3:
                        _946 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_946]
                        mem[_946 + 32] = address(arg1)
                        require 1 < mem[_946]
                        mem[_946 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_946 + 100] = this.address
                        mem[_946 + 132] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg2)
                        mem[_946 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _946 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_946 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_946 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                            mem[_946 + ceil32(return_data.size) + 132] = arg3
                            mem[_946 + ceil32(return_data.size) + 164] = 160
                            mem[_946 + ceil32(return_data.size) + 260] = mem[_946]
                            idx = 0
                            s = _946 + 32
                            t = _946 + ceil32(return_data.size) + 292
                            while idx < mem[_946]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_946 + ceil32(return_data.size) + 196] = this.address
                            mem[_946 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg2))
                            call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], arg3, 160, address(this.address), block.timestamp + (24 * 3600), mem[_946 + ceil32(return_data.size) + 260 len (32 * mem[_946]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_946 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _946 + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 32
                            _1458 = mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28]
                            require mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require _946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 127 < _946 + ceil32(return_data.size) + return_data.size + 96
                            _1460 = mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                            require mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96] <= test266151307()
                            require (32 * mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 >= 0 and _946 + (2 * ceil32(return_data.size)) + (32 * mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128 <= test266151307()
                            mem[64] = _946 + (2 * ceil32(return_data.size)) + (32 * mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 128
                            mem[_946 + (2 * ceil32(return_data.size)) + 96] = mem[_946 + ceil32(return_data.size) + mem[_946 + ceil32(return_data.size) + 96 len 4], ext_call.return_data[0 len 28] + 96]
                            require _1458 + (32 * _1460) + 32 <= return_data.size
                            idx = 0
                            s = _946 + ceil32(return_data.size) + _1458 + 128
                            t = _946 + (2 * ceil32(return_data.size)) + 128
                            while idx < _1460:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[_946 + ceil32(return_data.size) + 100] = this.address
                            mem[_946 + ceil32(return_data.size) + 132] = address(arg2)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg2)
                            mem[_946 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_946 + (2 * ceil32(return_data.size)) + 132] = address(arg2)
                            mem[_946 + (2 * ceil32(return_data.size)) + 164] = -1
                            mem[_946 + (2 * ceil32(return_data.size)) + 96] = 68
                            mem[64] = _946 + (2 * ceil32(return_data.size)) + 196
                            mem[_946 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                            mem[_946 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[_946 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[_946 + (2 * ceil32(return_data.size)) + 196 len 28]
                            mem[_946 + (2 * ceil32(return_data.size)) + 264] = 0
                            call address(arg1) with:
                                 gas gas_remaining wei
                                args mem[_946 + (2 * ceil32(return_data.size)) + 200 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_946 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_946 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                    mem[_946 + (2 * ceil32(return_data.size)) + 232] = arg3
                                    mem[_946 + (2 * ceil32(return_data.size)) + 264] = 160
                                    mem[_946 + (2 * ceil32(return_data.size)) + 360] = mem[_946]
                                    idx = 0
                                    s = _946 + 32
                                    t = _946 + (2 * ceil32(return_data.size)) + 392
                                    while idx < mem[_946]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_946 + (2 * ceil32(return_data.size)) + 296] = this.address
                                    mem[_946 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, 160, address(this.address), block.timestamp + (24 * 3600), mem[_946 + (2 * ceil32(return_data.size)) + 360 len (32 * mem[_946]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_946 + (2 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _946 + (4 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    _1680 = mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require _946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 227 < _946 + (2 * ceil32(return_data.size)) + return_data.size + 196
                                    _1696 = mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196] <= test266151307()
                                    require (32 * mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]) + 32 >= 0 and _946 + (4 * ceil32(return_data.size)) + (32 * mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]) + 228 <= test266151307()
                                    mem[_946 + (4 * ceil32(return_data.size)) + 196] = mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]
                                    require _1680 + (32 * _1696) + 32 <= return_data.size
                                    idx = 0
                                    s = _946 + (2 * ceil32(return_data.size)) + _1680 + 228
                                    t = _946 + (4 * ceil32(return_data.size)) + 228
                                    while idx < _1696:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_946 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_946 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                    mem[_946 + (2 * ceil32(return_data.size)) + 232] = arg3
                                    mem[_946 + (2 * ceil32(return_data.size)) + 264] = 160
                                    mem[_946 + (2 * ceil32(return_data.size)) + 360] = mem[_946]
                                    idx = 0
                                    s = _946 + 32
                                    t = _946 + (2 * ceil32(return_data.size)) + 392
                                    while idx < mem[_946]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_946 + (2 * ceil32(return_data.size)) + 296] = this.address
                                    mem[_946 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, 160, address(this.address), block.timestamp + (24 * 3600), mem[_946 + (2 * ceil32(return_data.size)) + 360 len (32 * mem[_946]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_946 + (2 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _946 + (4 * ceil32(return_data.size)) + 196
                                    require return_data.size >= 32
                                    _1681 = mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require _946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 227 < _946 + (2 * ceil32(return_data.size)) + return_data.size + 196
                                    _1697 = mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196] <= test266151307()
                                    require (32 * mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]) + 32 >= 0 and _946 + (4 * ceil32(return_data.size)) + (32 * mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]) + 228 <= test266151307()
                                    mem[_946 + (4 * ceil32(return_data.size)) + 196] = mem[_946 + (2 * ceil32(return_data.size)) + mem[_946 + (2 * ceil32(return_data.size)) + 196 len 4], ext_call.return_data[0 len 28] + 196]
                                    require _1681 + (32 * _1697) + 32 <= return_data.size
                                    idx = 0
                                    s = _946 + (2 * ceil32(return_data.size)) + _1681 + 228
                                    t = _946 + (4 * ceil32(return_data.size)) + 228
                                    while idx < _1697:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[64] = _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                mem[_946 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                mem[_946 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_946]
                                    idx = 0
                                    s = _946 + 32
                                    t = _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                    while idx < mem[_946]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, 160, address(this.address), block.timestamp + (24 * 3600), mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len (32 * mem[_946]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                    require return_data.size >= 32
                                    _1682 = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 228 < _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
                                    _1698 = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197] <= test266151307()
                                    require (32 * mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]) + 32 >= 0 and _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]) + 229 <= test266151307()
                                    mem[_946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]
                                    require _1682 + (32 * _1698) + 32 <= return_data.size
                                    idx = 0
                                    s = _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1682 + 229
                                    t = _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                                    while idx < _1698:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[_946 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_946 + (2 * ceil32(return_data.size)) + 228])
                                    if not mem[_946 + (2 * ceil32(return_data.size)) + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_946]
                                    idx = 0
                                    s = _946 + 32
                                    t = _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                    while idx < mem[_946]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, 160, address(this.address), block.timestamp + (24 * 3600), mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len (32 * mem[_946]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                    require return_data.size >= 32
                                    _1683 = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 228 < _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
                                    _1699 = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]
                                    require mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197] <= test266151307()
                                    require (32 * mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]) + 32 >= 0 and _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]) + 229 <= test266151307()
                                    mem[_946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[_946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len 4], ext_call.return_data[0 len 28] + 197]
                                    require _1683 + (32 * _1699) + 32 <= return_data.size
                                    idx = 0
                                    s = _946 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + _1683 + 229
                                    t = _946 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                                    while idx < _1699:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
    else:
        mem[32] = 1
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'caller is not the owner or operator'
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            if address(arg1) != 0xfe000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = address(arg1)
                mem[0] = msg.sender
                mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                if not arg3:
                    mem[ceil32(return_data.size) + 196] = this.address
                    mem[ceil32(return_data.size) + 228] = address(arg2)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(arg2)
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= ext_call.return_data[0]:
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 27
                            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 228] = arg3
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + (24 * 3600)
                        require ext_code.size(address(arg2))
                        call address(arg2).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _423 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _440 = mem[_423]
                        require mem[_423] <= test266151307()
                        require _423 + mem[_423] + 31 < _423 + return_data.size
                        _449 = mem[_423 + mem[_423]]
                        require mem[_423 + mem[_423]] <= test266151307()
                        require (32 * mem[_423 + mem[_423]]) + 32 >= 0 and _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32 <= test266151307()
                        mem[64] = _423 + ceil32(return_data.size) + (32 * mem[_423 + mem[_423]]) + 32
                        mem[_423 + ceil32(return_data.size)] = _449
                        require _440 + (32 * _449) + 32 <= return_data.size
                        idx = 0
                        s = _423 + _440 + 32
                        t = _423 + ceil32(return_data.size) + 32
                        while idx < _449:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        mem[(2 * ceil32(return_data.size)) + 196] = this.address
                        mem[(2 * ceil32(return_data.size)) + 228] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 54
                            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: approve from non-zero'
                            mem[(4 * ceil32(return_data.size)) + 292] = ' to non-zero allowance' << 80
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (5 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 260] = -1
                        mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
                        if not ext_code.hash(address(arg1)):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
                        if floor32((5 * ceil32(return_data.size)) + 99) <= (5 * ceil32(return_data.size)) + 68:
                            call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _998 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1014 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _998 + (32 * _1014) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _998 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1014:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _999 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1015 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _999 + (32 * _1015) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _999 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1015:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _1000 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1016 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _1000 + (32 * _1016) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1000 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1016:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _1001 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1017 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _1001 + (32 * _1017) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1001 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1017:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                        else:
                            mem[(10 * ceil32(return_data.size)) + 360] = 0
                            call address(arg1).mem[(4 * ceil32(return_data.size)) + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 296 len (13 * ceil32(return_data.size)) + 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _1002 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1018 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _1002 + (32 * _1018) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _1002 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1018:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 328] = arg3
                                    mem[(4 * ceil32(return_data.size)) + 360] = 160
                                    mem[(4 * ceil32(return_data.size)) + 456] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + 488
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 424] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 488 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 292
                                    require return_data.size >= 32
                                    _1003 = mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 323 < (4 * ceil32(return_data.size)) + return_data.size + 292
                                    _1019 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]) + 324 <= test266151307()
                                    mem[(6 * ceil32(return_data.size)) + 292] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 292 len 4], ext_call.return_data[0 len 28] + 292]
                                    require _1003 + (32 * _1019) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + _1003 + 324
                                    t = (6 * ceil32(return_data.size)) + 324
                                    while idx < _1019:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[(4 * ceil32(return_data.size)) + 292] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _1004 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1020 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _1004 + (32 * _1020) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1004 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1020:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 160
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 128
                                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 64]), address(this.address), block.timestamp + (24 * 3600)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                    require return_data.size >= 32
                                    _1005 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 324 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 293
                                    _1021 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= test266151307()
                                    require (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325 <= test266151307()
                                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 325
                                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
                                    require _1005 + (32 * _1021) + 32 <= return_data.size
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1005 + 325
                                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                                    while idx < _1021:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                else:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _355 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _381 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _355 + (32 * _381) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _355 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _381:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require 1 < _381
                    if mem[(2 * ceil32(return_data.size)) + 256] >= arg3:
                        _948 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_948]
                        mem[_948 + 32] = address(arg1)
                        mem[0] = msg.sender
                        require 1 < mem[_948]
                        mem[_948 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
                        mem[_948 + 100] = this.address
                        mem[_948 + 132] = address(arg2)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(arg2)
                        mem[_948 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _948 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= ext_call.return_data[0]:
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_948 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_948 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                            mem[_948 + ceil32(return_data.size) + 132] = arg3
                            mem[_948 + ceil32(return_data.size) + 164] = 160
                            mem[_948 + ceil32(return_data.size) + 260] = mem[_948]
                            idx = 0
                            s = _948 + 32
                            t = _948 + ceil32(return_data.size) + 292
                            while idx < mem[_948]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_948 + ceil32(return_data.size) + 196] = this.address
                            mem[_948 + ceil32(return_data.size) + 228] = block.timestamp + (24 * 3600)
                            require ext_code.size(address(arg2))
                            call address(arg2).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _948 + ceil32(return_data.size) + (32 * mem[_948]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1445 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1459 = mem[_1445]
                            require mem[_1445] <= test266151307()
                            require _1445 + mem[_1445] + 31 < _1445 + return_data.size
                            _1465 = mem[_1445 + mem[_1445]]
                            require mem[_1445 + mem[_1445]] <= test266151307()
                            require (32 * mem[_1445 + mem[_1445]]) + 32 >= 0 and _1445 + ceil32(return_data.size) + (32 * mem[_1445 + mem[_1445]]) + 32 <= test266151307()
                            mem[64] = _1445 + ceil32(return_data.size) + (32 * mem[_1445 + mem[_1445]]) + 32
                            mem[_1445 + ceil32(return_data.size)] = _1465
                            require _1459 + (32 * _1465) + 32 <= return_data.size
                            idx = 0
                            s = _1445 + _1459 + 32
                            t = _1445 + ceil32(return_data.size) + 32
                            while idx < _1465:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            mem[_948 + ceil32(return_data.size) + 100] = this.address
                            mem[_948 + ceil32(return_data.size) + 132] = address(arg2)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(this.address), address(arg2)
                            mem[_948 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_948 + (2 * ceil32(return_data.size)) + 132] = address(arg2)
                            mem[_948 + (2 * ceil32(return_data.size)) + 164] = -1
                            mem[_948 + (2 * ceil32(return_data.size)) + 96] = 68
                            mem[64] = _948 + (2 * ceil32(return_data.size)) + 196
                            mem[_948 + (2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
                            mem[_948 + (2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
                            if not ext_code.hash(address(arg1)):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(address(arg1)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[_948 + (2 * ceil32(return_data.size)) + 196 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1, mem[_948 + (2 * ceil32(return_data.size)) + 196 len 28]
                            mem[_948 + (2 * ceil32(return_data.size)) + 264] = 0
                            call address(arg1) with:
                                 gas gas_remaining wei
                                args mem[_948 + (2 * ceil32(return_data.size)) + 200 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not ext_call.return_data[0]:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_948 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_948 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                    mem[_948 + (2 * ceil32(return_data.size)) + 232] = arg3
                                    mem[_948 + (2 * ceil32(return_data.size)) + 264] = 160
                                    mem[_948 + (2 * ceil32(return_data.size)) + 360] = mem[_948]
                                    idx = 0
                                    s = _948 + 32
                                    t = _948 + (2 * ceil32(return_data.size)) + 392
                                    while idx < mem[_948]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_948 + (2 * ceil32(return_data.size)) + 296] = this.address
                                    mem[_948 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _948 + (2 * ceil32(return_data.size)) + (32 * mem[_948]) + -mem[64] + 388]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1672 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1688 = mem[_1672]
                                    require mem[_1672] <= test266151307()
                                    require _1672 + mem[_1672] + 31 < _1672 + return_data.size
                                    _1704 = mem[_1672 + mem[_1672]]
                                    require mem[_1672 + mem[_1672]] <= test266151307()
                                    require (32 * mem[_1672 + mem[_1672]]) + 32 >= 0 and _1672 + ceil32(return_data.size) + (32 * mem[_1672 + mem[_1672]]) + 32 <= test266151307()
                                    mem[64] = _1672 + ceil32(return_data.size) + (32 * mem[_1672 + mem[_1672]]) + 32
                                    mem[_1672 + ceil32(return_data.size)] = _1704
                                    require _1688 + (32 * _1704) + 32 <= return_data.size
                                    idx = 0
                                    s = _1672 + _1688 + 32
                                    t = _1672 + ceil32(return_data.size) + 32
                                    while idx < _1704:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require ext_call.return_data[0] >= 32
                                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                    if not 0, mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_948 + (2 * ceil32(return_data.size)) + 196] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_948 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                                    mem[_948 + (2 * ceil32(return_data.size)) + 232] = arg3
                                    mem[_948 + (2 * ceil32(return_data.size)) + 264] = 160
                                    mem[_948 + (2 * ceil32(return_data.size)) + 360] = mem[_948]
                                    idx = 0
                                    s = _948 + 32
                                    t = _948 + (2 * ceil32(return_data.size)) + 392
                                    while idx < mem[_948]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_948 + (2 * ceil32(return_data.size)) + 296] = this.address
                                    mem[_948 + (2 * ceil32(return_data.size)) + 328] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _948 + (2 * ceil32(return_data.size)) + (32 * mem[_948]) + -mem[64] + 388]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1673 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1689 = mem[_1673]
                                    require mem[_1673] <= test266151307()
                                    require _1673 + mem[_1673] + 31 < _1673 + return_data.size
                                    _1705 = mem[_1673 + mem[_1673]]
                                    require mem[_1673 + mem[_1673]] <= test266151307()
                                    require (32 * mem[_1673 + mem[_1673]]) + 32 >= 0 and _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32 <= test266151307()
                                    mem[64] = _1673 + ceil32(return_data.size) + (32 * mem[_1673 + mem[_1673]]) + 32
                                    mem[_1673 + ceil32(return_data.size)] = _1705
                                    require _1689 + (32 * _1705) + 32 <= return_data.size
                                    idx = 0
                                    s = _1673 + _1689 + 32
                                    t = _1673 + ceil32(return_data.size) + 32
                                    while idx < _1705:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                            else:
                                mem[64] = _948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
                                mem[_948 + (2 * ceil32(return_data.size)) + 196] = return_data.size
                                mem[_948 + (2 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not return_data.size:
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_948]
                                    idx = 0
                                    s = _948 + 32
                                    t = _948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                    while idx < mem[_948]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_948]) + -mem[64] + 389]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1674 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1690 = mem[_1674]
                                    require mem[_1674] <= test266151307()
                                    require _1674 + mem[_1674] + 31 < _1674 + return_data.size
                                    _1706 = mem[_1674 + mem[_1674]]
                                    require mem[_1674 + mem[_1674]] <= test266151307()
                                    require (32 * mem[_1674 + mem[_1674]]) + 32 >= 0 and _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32 <= test266151307()
                                    mem[64] = _1674 + ceil32(return_data.size) + (32 * mem[_1674 + mem[_1674]]) + 32
                                    mem[_1674 + ceil32(return_data.size)] = _1706
                                    require _1690 + (32 * _1706) + 32 <= return_data.size
                                    idx = 0
                                    s = _1674 + _1690 + 32
                                    t = _1674 + ceil32(return_data.size) + 32
                                    while idx < _1706:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                else:
                                    require return_data.size >= 32
                                    require mem[_948 + (2 * ceil32(return_data.size)) + 228] == bool(mem[_948 + (2 * ceil32(return_data.size)) + 228])
                                    if not mem[_948 + (2 * ceil32(return_data.size)) + 228]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if block.timestamp + (24 * 3600) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = arg3
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 160
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = mem[_948]
                                    idx = 0
                                    s = _948 + 32
                                    t = _948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393
                                    while idx < mem[_948]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                                    mem[_948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = block.timestamp + (24 * 3600)
                                    require ext_code.size(address(arg2))
                                    call address(arg2).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _948 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[_948]) + -mem[64] + 389]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1675 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1691 = mem[_1675]
                                    require mem[_1675] <= test266151307()
                                    require _1675 + mem[_1675] + 31 < _1675 + return_data.size
                                    _1707 = mem[_1675 + mem[_1675]]
                                    require mem[_1675 + mem[_1675]] <= test266151307()
                                    require (32 * mem[_1675 + mem[_1675]]) + 32 >= 0 and _1675 + ceil32(return_data.size) + (32 * mem[_1675 + mem[_1675]]) + 32 <= test266151307()
                                    mem[64] = _1675 + ceil32(return_data.size) + (32 * mem[_1675 + mem[_1675]]) + 32
                                    mem[_1675 + ceil32(return_data.size)] = _1707
                                    require _1691 + (32 * _1707) + 32 <= return_data.size
                                    idx = 0
                                    s = _1675 + _1691 + 32
                                    t = _1675 + ceil32(return_data.size) + 32
                                    while idx < _1707:
                                        require mem[s] == mem[s]
                                        mem[t] = mem[s]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
}



}
