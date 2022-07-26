contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
  stop
}

function addNewUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
}

function removeUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require arg1 - msg.sender
    stor1[address(arg1)] = 0
}

function sub_7ff22a7a(?) payable {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawCurrency(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Specified Token Amount Larger Than Balance'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a7f422a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Specified Token Amount Larger Than Balance'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_21c5420d(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if not stor1[address(msg.sender)]:
        require msg.sender == stor0
    if not address(arg1):
        revert with 0, 'Router, from, and to cannot be the zero address!'
    if not address(arg2):
        revert with 0, 'Router, from, and to cannot be the zero address!'
    if not address(arg3):
        revert with 0, 'Router, from, and to cannot be the zero address!'
    if not address(arg4):
        revert with 0, 'Tokens cannot be the zero address!'
    if not address(arg5):
        revert with 0, 'Tokens cannot be the zero address!'
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg4), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not stor1[address(msg.sender)]:
        require msg.sender == stor0
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 448 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg4):
        mem[(6 * ceil32(return_data.size)) + 516] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg6, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        mem[(6 * ceil32(return_data.size)) + 516] = Mask(112, 0, ext_call.return_data[0])
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg6, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 484] = this.address
    mem[(7 * ceil32(return_data.size)) + 516] = arg6
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 452] = address(arg1)
    mem[(8 * ceil32(return_data.size)) + 484] = arg6
    call address(arg4).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(10 * ceil32(return_data.size)) + 480] = address(arg4)
    mem[(10 * ceil32(return_data.size)) + 512] = address(arg5)
    mem[(10 * ceil32(return_data.size)) + 544] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(10 * ceil32(return_data.size)) + 548] = arg6
    idx = 0
    s = (10 * ceil32(return_data.size)) + 480
    t = (10 * ceil32(return_data.size)) + 740
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg6, arg7, Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 740 len 64]), address(this.address), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg5).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1000 < 1000 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call address(arg5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approval of output token failed'
    if not stor1[address(msg.sender)]:
        require msg.sender == stor0
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 736 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg4):
        mem[(14 * ceil32(return_data.size)) + 772] = Mask(112, 0, ext_call.return_data[0])
        mem[(14 * ceil32(return_data.size)) + 804] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        mem[(14 * ceil32(return_data.size)) + 772] = Mask(112, 0, ext_call.return_data[32])
        mem[(14 * ceil32(return_data.size)) + 804] = Mask(112, 0, ext_call.return_data[0])
        staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(15 * ceil32(return_data.size)) + 768] = address(arg5)
    mem[(15 * ceil32(return_data.size)) + 800] = address(arg4)
    mem[(15 * ceil32(return_data.size)) + 832] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(15 * ceil32(return_data.size)) + 836] = ext_call.return_data[0]
    idx = 0
    s = (15 * ceil32(return_data.size)) + 768
    t = (15 * ceil32(return_data.size)) + 1028
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(15 * ceil32(return_data.size)) + 1028 len 64]), address(this.address), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1000 < 1000 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           -(1000 * ext_call.return_data[0] / ext_call.return_data[0]) + 1000,
           ext_call.return_data[0],
           ext_call.return_data[0],
           -(1000 * ext_call.return_data[0] / ext_call.return_data[0]) + 1000
}



}
