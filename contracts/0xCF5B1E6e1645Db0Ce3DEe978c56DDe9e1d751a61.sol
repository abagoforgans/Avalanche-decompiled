contract main {




// =====================  Runtime code  =====================


#
#  - sub_b77bc153(?)
#  - withdraw(address arg1, uint256 arg2)
#
address owner;
mapping of uint8 stor1;

function trusted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTrusted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d718bf6d(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'forbidden'
    mem[100] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'not enough balance'
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = address(arg1)
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg4:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 228] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] + arg4
    mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 228 len 28] = address(arg1) << 64
    mem[(4 * ceil32(return_data.size)) + 224 len 4] = approve(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + 292] = 32
    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg2)):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 356 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, ext_call.return_data[0] + arg4, mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) <= (5 * ceil32(return_data.size)) + 68:
        call address(arg2).mem[(4 * ceil32(return_data.size)) + 356 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 360 len (13 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 360] = arg4
                mem[(4 * ceil32(return_data.size)) + 392] = arg5
                mem[(4 * ceil32(return_data.size)) + 424] = 160
                mem[(4 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 456] = this.address
                mem[(4 * ceil32(return_data.size)) + 488] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 552 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _445 = mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 387 < (4 * ceil32(return_data.size)) + return_data.size + 356
                _453 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357
                mem[(6 * ceil32(return_data.size)) + 356] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                require (32 * _453) + _445 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 388 len ceil32(32 * _453)] = mem[(4 * ceil32(return_data.size)) + _445 + 388 len ceil32(32 * _453)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_565] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_565] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_565] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 360] = arg4
                mem[(4 * ceil32(return_data.size)) + 392] = arg5
                mem[(4 * ceil32(return_data.size)) + 424] = 160
                mem[(4 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 456] = this.address
                mem[(4 * ceil32(return_data.size)) + 488] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 552 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _446 = mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 387 < (4 * ceil32(return_data.size)) + return_data.size + 356
                _454 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357
                mem[(6 * ceil32(return_data.size)) + 356] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                require (32 * _454) + _446 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 388 len ceil32(32 * _454)] = mem[(4 * ceil32(return_data.size)) + _446 + 388 len ceil32(32 * _454)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_566] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_566] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_566] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
        else:
            mem[(4 * ceil32(return_data.size)) + 356] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg4
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg5
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _447 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 388 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _455 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                require (32 * _455) + _447 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _455)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _447 + 389 len ceil32(32 * _455)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _567 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_567] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_567] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_567] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
            else:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                if not mem[(4 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg4
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg5
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _448 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 388 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _456 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                require (32 * _456) + _448 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _456)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _448 + 389 len ceil32(32 * _456)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_568] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_568] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_568] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
    else:
        mem[(10 * ceil32(return_data.size)) + 424] = 0
        call address(arg2).mem[(4 * ceil32(return_data.size)) + 356 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 360 len (13 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 360] = arg4
                mem[(4 * ceil32(return_data.size)) + 392] = arg5
                mem[(4 * ceil32(return_data.size)) + 424] = 160
                mem[(4 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 456] = this.address
                mem[(4 * ceil32(return_data.size)) + 488] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 552 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _449 = mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 387 < (4 * ceil32(return_data.size)) + return_data.size + 356
                _457 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357
                mem[(6 * ceil32(return_data.size)) + 356] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                require (32 * _457) + _449 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 388 len ceil32(32 * _457)] = mem[(4 * ceil32(return_data.size)) + _449 + 388 len ceil32(32 * _457)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _569 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_569] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_569] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_569] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 356] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 360] = arg4
                mem[(4 * ceil32(return_data.size)) + 392] = arg5
                mem[(4 * ceil32(return_data.size)) + 424] = 160
                mem[(4 * ceil32(return_data.size)) + 520] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 552
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 456] = this.address
                mem[(4 * ceil32(return_data.size)) + 488] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 552 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 356
                require return_data.size >= 32
                _450 = mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 387 < (4 * ceil32(return_data.size)) + return_data.size + 356
                _458 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]) + 357
                mem[(6 * ceil32(return_data.size)) + 356] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 356 len 4], Mask(224, 32, arg4) >> 32 + 356]
                require (32 * _458) + _450 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + 388 len ceil32(32 * _458)] = mem[(4 * ceil32(return_data.size)) + _450 + 388 len ceil32(32 * _458)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_570] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_570] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_570] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
        else:
            mem[(4 * ceil32(return_data.size)) + 356] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg4
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg5
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _451 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 388 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _459 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                require (32 * _459) + _451 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _459)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _451 + 389 len ceil32(32 * _459)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_571] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_571] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_571] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
            else:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                if not mem[(4 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if 1 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg4
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg5
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 160
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = block.timestamp + 1
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg4, arg5, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 64]), address(this.address), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                require return_data.size >= 32
                _452 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 388 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 357
                _460 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]) + 358
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, arg4) >> 32 + 357]
                require (32 * _460) + _452 + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len ceil32(32 * _460)] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + _452 + 389 len ceil32(32 * _460)]
                mem[mem[64] + 4] = this.address
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_572] <= ext_call.return_data[0]:
                    revert with 0, 'insufficient output balance'
                if mem[_572] < ext_call.return_data[0]:
                    revert with 0, 17
                if mem[_572] - ext_call.return_data[0] < arg5:
                    revert with 0, 'insufficient output balance'
}



}
