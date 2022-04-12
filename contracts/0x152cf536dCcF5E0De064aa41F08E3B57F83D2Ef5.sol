contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function sub_caecc2ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function addTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e253b668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    call this.address with:
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        emit 0x5757b10b: 1
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a3778c64(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if arg7 < block.timestamp:
        revert with 0, '6'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg5) with:
         gas gas_remaining wei
        args arg6[all]
    if not ext_call.success:
        revert with 0, '7'
    require this.address == msg.sender
    if address(arg1) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg1) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            if address(arg1) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg1) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    revert with 0, '5'
    if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if address(arg3) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    revert with 0, '4'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] + arg2:
        revert with 0, '3'
    if ext_call.return_data[0] < ext_call.return_data[0] + arg4:
        revert with 0, '2'
}

function sub_32f84eb0(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    mem[(32 * ('cd', 36).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 132] = cd[4]
    mem[(32 * ('cd', 36).length) + 164] = 64
    mem[(32 * ('cd', 36).length) + 196] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + 228
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 36).length) + 132 len (96 * ('cd', 36).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _39 = mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + return_data.size + 128 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    _40 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
    if mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307():
        if (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307():
            mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require return_data.size >= _39 + (32 * _40) + 32
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _40] = mem[(32 * ('cd', 36).length) + _39 + 160 len 32 * _40]
            if ('cd', 36).length - 1 < _40:
                return memory
                  from (32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160
                   len 32
    revert
}

function sub_edbb6cb8(?) payable {
    require calldata.size - 4 >= 160
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    if cd[100] < block.timestamp:
        revert with 0, 'EXPIRED'
    require ('cd', 68).length - 1 < ('cd', 68).length
    _29 = mem[(32 * ('cd', 68).length - 1) + 128]
    require 0 < ('cd', 68).length
    _32 = mem[128]
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    mem[(32 * ('cd', 68).length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 132] = cd[4]
    mem[(32 * ('cd', 68).length) + 164] = cd[36]
    mem[(32 * ('cd', 68).length) + 196] = 160
    mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
    idx = 0
    s = 128
    t = (32 * ('cd', 68).length) + 324
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 228] = this.address
    mem[(32 * ('cd', 68).length) + 260] = cd[100]
    require ext_code.size(address(cd[132]))
    call address(cd[132]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 68).length) + return_data.size + 128 > (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    require mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307()
    require return_data.size >= mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32
    if address(_32) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
        if address(_32) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            if address(_32) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == address(_32)
    if address(_29) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        if address(_29) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
            if address(_29) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                require 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664 == address(_29)
    if address(cd[132]) != 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
        require 0x60ae616a2155ee3d9a68541ba4544862310933d4 == address(cd[132])
}



}
