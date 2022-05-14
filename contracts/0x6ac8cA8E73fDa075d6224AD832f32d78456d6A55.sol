contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function getOwner() payable {
    return owner
}

function traders(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'E1'
    owner = arg1
}

function addTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'E1'
    stor1[address(arg1)] = 1
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'E1'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'E1'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'E1'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAllToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'E1'
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
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c8280268(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'E1'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    mem[100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[4] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[4]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[4], mem[ceil32(return_data.size) + 228 len 28]
    mem[ceil32(return_data.size) + 328] = 0
    call address(('cd', 36)[0]).mem[ceil32(return_data.size) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if not ext_call.return_data[0]:
            if cd[4] + ext_call.return_data[0] < cd[4] + ext_call.return_data[0] / 2:
                revert with 0, 17
            mem[ceil32(return_data.size) + 232] = this.address
            mem[ceil32(return_data.size) + 264] = address(cd[68])
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[68])
            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                mem[(2 * ceil32(return_data.size)) + 232] = this.address
                mem[(2 * ceil32(return_data.size)) + 264] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(4 * ceil32(return_data.size)) + 264] = 1
                    mem[(4 * ceil32(return_data.size)) + 296] = 160
                    mem[(4 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 328] = this.address
                    mem[(4 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1758 = mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (4 * ceil32(return_data.size)) + return_data.size + 228
                    _1790 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(6 * ceil32(return_data.size)) + 228] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1758 + (32 * _1790) + 32
                    mem[(6 * ceil32(return_data.size)) + 260 len 32 * _1790] = mem[(4 * ceil32(return_data.size)) + _1758 + 260 len 32 * _1790]
                    if 1 >= _1790:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(6 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(6 * ceil32(return_data.size)) + 292] / 90 != mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(6 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(4 * ceil32(return_data.size)) + 232] = address(cd[68])
                    mem[(4 * ceil32(return_data.size)) + 264] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + 264] = 1
                    mem[(6 * ceil32(return_data.size)) + 296] = 160
                    mem[(6 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1759 = mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (6 * ceil32(return_data.size)) + return_data.size + 228
                    _1791 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + 228] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1759 + (32 * _1791) + 32
                    mem[(7 * ceil32(return_data.size)) + 260 len 32 * _1791] = mem[(6 * ceil32(return_data.size)) + _1759 + 260 len 32 * _1791]
                    if 1 >= _1791:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + 292] / 90 != mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
            else:
                mem[(2 * ceil32(return_data.size)) + 232] = address(cd[68])
                mem[(2 * ceil32(return_data.size)) + 264] = -1
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), -1
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 232] = this.address
                mem[(4 * ceil32(return_data.size)) + 264] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + 264] = 1
                    mem[(6 * ceil32(return_data.size)) + 296] = 160
                    mem[(6 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1760 = mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (6 * ceil32(return_data.size)) + return_data.size + 228
                    _1792 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + 228] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1760 + (32 * _1792) + 32
                    mem[(7 * ceil32(return_data.size)) + 260 len 32 * _1792] = mem[(6 * ceil32(return_data.size)) + _1760 + 260 len 32 * _1792]
                    if 1 >= _1792:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + 292] / 90 != mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(6 * ceil32(return_data.size)) + 232] = address(cd[68])
                    mem[(6 * ceil32(return_data.size)) + 264] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(7 * ceil32(return_data.size)) + 264] = 1
                    mem[(7 * ceil32(return_data.size)) + 296] = 160
                    mem[(7 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 328] = this.address
                    mem[(7 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (7 * ceil32(return_data.size)) + return_data.size + 228
                    _1793 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 32
                    mem[(8 * ceil32(return_data.size)) + 260 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]]
                    if 1 >= _1793:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(8 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(8 * ceil32(return_data.size)) + 292] / 90 != mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(8 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(8 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
        else:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if cd[4] + ext_call.return_data[0] < cd[4] + ext_call.return_data[0] / 2:
                revert with 0, 17
            mem[ceil32(return_data.size) + 232] = this.address
            mem[ceil32(return_data.size) + 264] = address(cd[68])
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[68])
            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                mem[(2 * ceil32(return_data.size)) + 232] = this.address
                mem[(2 * ceil32(return_data.size)) + 264] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(4 * ceil32(return_data.size)) + 264] = 1
                    mem[(4 * ceil32(return_data.size)) + 296] = 160
                    mem[(4 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 328] = this.address
                    mem[(4 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1762 = mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (4 * ceil32(return_data.size)) + return_data.size + 228
                    _1794 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(6 * ceil32(return_data.size)) + 228] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1762 + (32 * _1794) + 32
                    mem[(6 * ceil32(return_data.size)) + 260 len 32 * _1794] = mem[(4 * ceil32(return_data.size)) + _1762 + 260 len 32 * _1794]
                    if 1 >= _1794:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(6 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(6 * ceil32(return_data.size)) + 292] / 90 != mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(6 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(4 * ceil32(return_data.size)) + 232] = address(cd[68])
                    mem[(4 * ceil32(return_data.size)) + 264] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + 264] = 1
                    mem[(6 * ceil32(return_data.size)) + 296] = 160
                    mem[(6 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1763 = mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (6 * ceil32(return_data.size)) + return_data.size + 228
                    _1795 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + 228] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1763 + (32 * _1795) + 32
                    mem[(7 * ceil32(return_data.size)) + 260 len 32 * _1795] = mem[(6 * ceil32(return_data.size)) + _1763 + 260 len 32 * _1795]
                    if 1 >= _1795:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + 292] / 90 != mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
            else:
                mem[(2 * ceil32(return_data.size)) + 232] = address(cd[68])
                mem[(2 * ceil32(return_data.size)) + 264] = -1
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), -1
                mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 232] = this.address
                mem[(4 * ceil32(return_data.size)) + 264] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + 264] = 1
                    mem[(6 * ceil32(return_data.size)) + 296] = 160
                    mem[(6 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 328] = this.address
                    mem[(6 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    _1764 = mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (6 * ceil32(return_data.size)) + return_data.size + 228
                    _1796 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + 228] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    require return_data.size >= _1764 + (32 * _1796) + 32
                    mem[(7 * ceil32(return_data.size)) + 260 len 32 * _1796] = mem[(6 * ceil32(return_data.size)) + _1764 + 260 len 32 * _1796]
                    if 1 >= _1796:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + 292] / 90 != mem[(7 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(6 * ceil32(return_data.size)) + 232] = address(cd[68])
                    mem[(6 * ceil32(return_data.size)) + 264] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + 228] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 232] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(7 * ceil32(return_data.size)) + 264] = 1
                    mem[(7 * ceil32(return_data.size)) + 296] = 160
                    mem[(7 * ceil32(return_data.size)) + 392] = ('cd', 36).length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 424
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 328] = this.address
                    mem[(7 * ceil32(return_data.size)) + 360] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + 424 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + 228
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 259 < (7 * ceil32(return_data.size)) + return_data.size + 228
                    _1797 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]
                    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 229 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]) + 32
                    mem[(8 * ceil32(return_data.size)) + 260 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 len 32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 228 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 228]]
                    if 1 >= _1797:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(8 * ceil32(return_data.size)) + 292] and 90 > -1 / mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 17
                    if 90 * mem[(8 * ceil32(return_data.size)) + 292] / 90 != mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(8 * ceil32(return_data.size)) + 292], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(8 * ceil32(return_data.size)) + 292] / 100, msg.sender, block.timestamp + 15
    else:
        mem[ceil32(return_data.size) + 228] = return_data.size
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
        if not return_data.size:
            if cd[4] + ext_call.return_data[0] < cd[4] + ext_call.return_data[0] / 2:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = address(cd[68])
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[68])
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1766 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1798 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1766 + (32 * _1798) + 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1798] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1766 + 261 len 32 * _1798]
                    if 1 >= _1798:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1767 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1799 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1767 + (32 * _1799) + 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1799] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _1767 + 261 len 32 * _1799]
                    if 1 >= _1799:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), -1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1768 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1800 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1768 + (32 * _1800) + 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1800] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _1768 + 261 len 32 * _1800]
                    if 1 >= _1800:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1801 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230
                    require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + (32 * _1801) + 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1801] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 261 len 32 * _1801]
                    if 1 >= _1801:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 'TransferHelper: TRANSFER_FROM_FAILED'
            if cd[4] + ext_call.return_data[0] < cd[4] + ext_call.return_data[0] / 2:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = address(cd[68])
            require ext_code.size(address(('cd', 36)[0]))
            staticcall address(('cd', 36)[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[68])
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = this.address
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1770 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1802 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1770 + (32 * _1802) + 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1802] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _1770 + 261 len 32 * _1802]
                    if 1 >= _1802:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1771 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1803 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1771 + (32 * _1803) + 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1803] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _1771 + 261 len 32 * _1803]
                    if 1 >= _1803:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                require ext_code.size(address(('cd', 36)[0]))
                call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), -1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(cd[68])
                require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                staticcall address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[68])
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2):
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    _1772 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32
                    require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (6 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1804 = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    require return_data.size >= _1772 + (32 * _1804) + 32
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1804] = mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + _1772 + 261 len 32 * _1804]
                    if 1 >= _1804:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = address(cd[68])
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = -1
                    require ext_code.size(address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]))
                    call address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), -1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 233] = cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 160
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ('cd', 36).length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
                    t = cd[36] + 36
                    while idx < ('cd', 36).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = block.timestamp + 15
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2), 1, Array(len=('cd', 36).length, data=mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 <= test266151307()
                    require (7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 260 < (7 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 229
                    _1805 = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]
                    if mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229] > test266151307():
                        revert with 0, 65
                    if (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 229]) + 230
                    require return_data.size >= mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + (32 * _1805) + 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 32 * _1805] = mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229 len 4], Mask(224, 32, cd[4] + ext_call.return_data[0] - (cd[4] + ext_call.return_data[0] / 2)) >> 32 + 261 len 32 * _1805]
                    if 1 >= _1805:
                        revert with 0, 50
                    if Mask(255, 1, cd[4] + ext_call.return_data[0]) and 90 > -1 / cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 17
                    if 90 * cd[4] + ext_call.return_data[0] / 2 / 90 != cd[4] + ext_call.return_data[0] / 2:
                        revert with 0, 'ds-math-mul-overflow'
                    if mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] and 90 > -1 / mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 17
                    if 90 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 90 != mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'ds-math-mul-overflow'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                         gas gas_remaining wei
                        args address(('cd', 36)[0]), address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]), Mask(255, 1, cd[4] + ext_call.return_data[0]), mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293], 90 * cd[4] + ext_call.return_data[0] / 2 / 100, 90 * mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] / 100, msg.sender, block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
