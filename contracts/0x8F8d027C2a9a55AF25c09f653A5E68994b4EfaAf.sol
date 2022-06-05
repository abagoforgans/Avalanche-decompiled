contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address sub_43a9117dAddress;
address sub_62a956afAddress;

function sub_43a9117d(?) payable {
    return sub_43a9117dAddress
}

function sub_62a956af(?) payable {
    return sub_62a956afAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_81279c7e(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    _2 = Mask(96, 0, arg3.length), mem[128 len 20]
    _3 = mem[136]
    mem[ceil32(arg3.length) + 128] = 2
    mem[ceil32(arg3.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg3.length) + 224] = 2
    mem[ceil32(arg3.length) + 320] = 2
    mem[ceil32(arg3.length) + 352 len 64] = call.data[calldata.size len 64]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not arg1:
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 420] = arg2
            mem[ceil32(arg3.length) + 452] = 64
            mem[ceil32(arg3.length) + 484] = 2
            mem[ceil32(arg3.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg1:
                if not arg1:
                    _1485 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                    _1557 = mem[_1485 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1485 + ceil32(arg3.length) + 416])] = mem[_1485 + ceil32(arg3.length) + 448 len floor32(mem[_1485 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2589 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2589
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3573 = mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3645 = mem[_3573 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3573 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4365 = mem[(32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4365 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4365 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    _1487 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                    _1558 = mem[_1487 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1487 + ceil32(arg3.length) + 416])] = mem[_1487 + ceil32(arg3.length) + 448 len floor32(mem[_1487 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2593 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2593
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3575 = mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3646 = mem[_3575 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3575 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4366 = mem[(32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4366 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4366 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
            else:
                if not arg1:
                    _1489 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                    _1559 = mem[_1489 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1489 + ceil32(arg3.length) + 416])] = mem[_1489 + ceil32(arg3.length) + 448 len floor32(mem[_1489 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2597 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2597
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3577 = mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3647 = mem[_3577 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3577 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4367 = mem[(32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4367 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4367 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    _1491 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                    _1560 = mem[_1491 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1491 + ceil32(arg3.length) + 416])] = mem[_1491 + ceil32(arg3.length) + 448 len floor32(mem[_1491 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2601 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2601
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3579 = mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3648 = mem[_3579 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3579 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4368 = mem[(32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4368 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4368 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
        else:
            if arg2:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            if not arg1:
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 420] = arg2
                mem[ceil32(arg3.length) + 452] = 64
                mem[ceil32(arg3.length) + 484] = 2
                mem[ceil32(arg3.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg1:
                    if not arg1:
                        _1493 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1561 = mem[_1493 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1493 + ceil32(arg3.length) + 416])] = mem[_1493 + ceil32(arg3.length) + 448 len floor32(mem[_1493 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2605 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2605
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3581 = mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3649 = mem[_3581 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3581 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4369 = mem[(32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4369 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4369 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1495 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1562 = mem[_1495 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1495 + ceil32(arg3.length) + 416])] = mem[_1495 + ceil32(arg3.length) + 448 len floor32(mem[_1495 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2609 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2609
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3583 = mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3650 = mem[_3583 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3583 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4370 = mem[(32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4370 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4370 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg1:
                        _1497 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1563 = mem[_1497 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1497 + ceil32(arg3.length) + 416])] = mem[_1497 + ceil32(arg3.length) + 448 len floor32(mem[_1497 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2613 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2613
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3585 = mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3651 = mem[_3585 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3585 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4371 = mem[(32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4371 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4371 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1499 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1564 = mem[_1499 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1499 + ceil32(arg3.length) + 416])] = mem[_1499 + ceil32(arg3.length) + 448 len floor32(mem[_1499 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2617 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2617
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3587 = mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3652 = mem[_3587 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3587 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4372 = mem[(32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4372 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4372 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 420] = arg2
                mem[ceil32(arg3.length) + 452] = 64
                mem[ceil32(arg3.length) + 484] = 2
                mem[ceil32(arg3.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg1:
                    if not arg1:
                        _1501 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1565 = mem[_1501 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1501 + ceil32(arg3.length) + 416])] = mem[_1501 + ceil32(arg3.length) + 448 len floor32(mem[_1501 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2621 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2621
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3589 = mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3653 = mem[_3589 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3589 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4373 = mem[(32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4373 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4373 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1503 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1566 = mem[_1503 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1503 + ceil32(arg3.length) + 416])] = mem[_1503 + ceil32(arg3.length) + 448 len floor32(mem[_1503 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2625 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2625
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3591 = mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3654 = mem[_3591 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3591 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4374 = mem[(32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4374 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4374 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg1:
                        _1505 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1567 = mem[_1505 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1505 + ceil32(arg3.length) + 416])] = mem[_1505 + ceil32(arg3.length) + 448 len floor32(mem[_1505 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2629 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2629
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3593 = mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3655 = mem[_3593 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3593 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4375 = mem[(32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4375 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4375 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1507 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg3.length) + 416]
                        _1568 = mem[_1507 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1507 + ceil32(arg3.length) + 416])] = mem[_1507 + ceil32(arg3.length) + 448 len floor32(mem[_1507 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2633 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2633
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3595 = mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3656 = mem[_3595 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3595 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4376 = mem[(32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4376 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4376 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
    else:
        if not arg1:
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 420] = arg1
            mem[ceil32(arg3.length) + 452] = 64
            mem[ceil32(arg3.length) + 484] = 2
            mem[ceil32(arg3.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg1:
                if not arg1:
                    _1509 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                    _1569 = mem[_1509 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1509 + ceil32(arg3.length) + 416])] = mem[_1509 + ceil32(arg3.length) + 448 len floor32(mem[_1509 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2637 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2637
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3597 = mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3657 = mem[_3597 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3597 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4377 = mem[(32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4377 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4377 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    _1511 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                    _1570 = mem[_1511 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1511 + ceil32(arg3.length) + 416])] = mem[_1511 + ceil32(arg3.length) + 448 len floor32(mem[_1511 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2641 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2641
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3599 = mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3658 = mem[_3599 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3599 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4378 = mem[(32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4378 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4378 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
            else:
                if not arg1:
                    _1513 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                    _1571 = mem[_1513 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1513 + ceil32(arg3.length) + 416])] = mem[_1513 + ceil32(arg3.length) + 448 len floor32(mem[_1513 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2645 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2645
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3601 = mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3659 = mem[_3601 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3601 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4379 = mem[(32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4379 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4379 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    _1515 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                    _1572 = mem[_1515 + ceil32(arg3.length) + 416]
                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1515 + ceil32(arg3.length) + 416])] = mem[_1515 + ceil32(arg3.length) + 448 len floor32(mem[_1515 + ceil32(arg3.length) + 416])]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    _2649 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2649
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3603 = mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    _3660 = mem[_3603 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3603 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                    _4380 = mem[(32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4380 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4380 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
        else:
            if arg2:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            if not arg1:
                mem[ceil32(arg3.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 420] = arg1
                mem[ceil32(arg3.length) + 452] = 64
                mem[ceil32(arg3.length) + 484] = 2
                mem[ceil32(arg3.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg1:
                    if not arg1:
                        _1517 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1573 = mem[_1517 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1517 + ceil32(arg3.length) + 416])] = mem[_1517 + ceil32(arg3.length) + 448 len floor32(mem[_1517 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2653 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2653
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3605 = mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3661 = mem[_3605 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3605 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4381 = mem[(32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4381 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4381 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1519 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1574 = mem[_1519 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1519 + ceil32(arg3.length) + 416])] = mem[_1519 + ceil32(arg3.length) + 448 len floor32(mem[_1519 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2657 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2657
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3607 = mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3662 = mem[_3607 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3607 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4382 = mem[(32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4382 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4382 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg1:
                        _1521 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1575 = mem[_1521 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1521 + ceil32(arg3.length) + 416])] = mem[_1521 + ceil32(arg3.length) + 448 len floor32(mem[_1521 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2661 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2661
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3609 = mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3663 = mem[_3609 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3609 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4383 = mem[(32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4383 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4383 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1523 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1576 = mem[_1523 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1523 + ceil32(arg3.length) + 416])] = mem[_1523 + ceil32(arg3.length) + 448 len floor32(mem[_1523 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2665 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2665
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3611 = mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3664 = mem[_3611 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3611 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4384 = mem[(32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4384 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4384 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg3.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                mem[ceil32(arg3.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg3.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 420] = arg1
                mem[ceil32(arg3.length) + 452] = 64
                mem[ceil32(arg3.length) + 484] = 2
                mem[ceil32(arg3.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[ceil32(arg3.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg3.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg3.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg1:
                    if not arg1:
                        _1525 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1577 = mem[_1525 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1525 + ceil32(arg3.length) + 416])] = mem[_1525 + ceil32(arg3.length) + 448 len floor32(mem[_1525 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2669 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2669
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3613 = mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3665 = mem[_3613 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3613 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4385 = mem[(32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4385 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4385 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1527 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1578 = mem[_1527 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1527 + ceil32(arg3.length) + 416])] = mem[_1527 + ceil32(arg3.length) + 448 len floor32(mem[_1527 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2673 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2673
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3615 = mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3666 = mem[_3615 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3615 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4386 = mem[(32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4386 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4386 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg1:
                        _1529 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1579 = mem[_1529 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1529 + ceil32(arg3.length) + 416])] = mem[_1529 + ceil32(arg3.length) + 448 len floor32(mem[_1529 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2677 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2677
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3617 = mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3667 = mem[_3617 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3617 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4387 = mem[(32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4387 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4387 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                    else:
                        _1531 = mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416] <= 4294967296 and mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg3.length) + 416 len 4], Mask(224, 32, arg1) >> 32 + ceil32(arg3.length) + 416]
                        _1580 = mem[_1531 + ceil32(arg3.length) + 416]
                        mem[ceil32(arg3.length) + ceil32(return_data.size) + 448 len floor32(mem[_1531 + ceil32(arg3.length) + 416])] = mem[_1531 + ceil32(arg3.length) + 448 len floor32(mem[_1531 + ceil32(arg3.length) + 416])]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        _2681 = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 452] = arg1
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 484] = _2681
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3619 = mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                        require mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg1) >> 32 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        _3668 = mem[_3619 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448])] = mem[_3619 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg3.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 448]
                        _4388 = mem[(32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg3.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 516] = _4388 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4388 - mem[ceil32(arg3.length) + ceil32(return_data.size) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = Mask(96, 0, arg4.length), mem[128 len 20]
    _3 = mem[136]
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    mem[ceil32(arg4.length) + 320] = 2
    mem[ceil32(arg4.length) + 352 len 64] = call.data[calldata.size len 64]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg3
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1485 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1557 = mem[_1485 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])] = mem[_1485 + ceil32(arg4.length) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2589 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2589
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3573 = mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3645 = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4365 = mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1487 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1558 = mem[_1487 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])] = mem[_1487 + ceil32(arg4.length) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2593 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2593
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3575 = mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3646 = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4366 = mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1489 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1559 = mem[_1489 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])] = mem[_1489 + ceil32(arg4.length) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2597 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2597
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3577 = mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3647 = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4367 = mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1491 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1560 = mem[_1491 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])] = mem[_1491 + ceil32(arg4.length) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2601 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2601
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3579 = mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3648 = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4368 = mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1493 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1561 = mem[_1493 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])] = mem[_1493 + ceil32(arg4.length) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2605 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2605
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3581 = mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3649 = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4369 = mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1495 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1562 = mem[_1495 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])] = mem[_1495 + ceil32(arg4.length) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2609 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2609
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3583 = mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3650 = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4370 = mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1497 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1563 = mem[_1497 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])] = mem[_1497 + ceil32(arg4.length) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2613 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2613
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3585 = mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3651 = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4371 = mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1499 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1564 = mem[_1499 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])] = mem[_1499 + ceil32(arg4.length) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2617 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2617
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3587 = mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3652 = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4372 = mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1501 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1565 = mem[_1501 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])] = mem[_1501 + ceil32(arg4.length) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2621 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2621
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3589 = mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3653 = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4373 = mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1503 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1566 = mem[_1503 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])] = mem[_1503 + ceil32(arg4.length) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2625 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2625
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3591 = mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3654 = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4374 = mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1505 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1567 = mem[_1505 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])] = mem[_1505 + ceil32(arg4.length) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2629 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2629
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3593 = mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3655 = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4375 = mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1507 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1568 = mem[_1507 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])] = mem[_1507 + ceil32(arg4.length) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2633 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2633
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3595 = mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3656 = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4376 = mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    else:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg2
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1509 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1569 = mem[_1509 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])] = mem[_1509 + ceil32(arg4.length) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2637 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2637
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3597 = mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3657 = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4377 = mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1511 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1570 = mem[_1511 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])] = mem[_1511 + ceil32(arg4.length) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2641 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2641
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3599 = mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3658 = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4378 = mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1513 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1571 = mem[_1513 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])] = mem[_1513 + ceil32(arg4.length) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2645 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2645
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3601 = mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3659 = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4379 = mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1515 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1572 = mem[_1515 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])] = mem[_1515 + ceil32(arg4.length) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2649 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2649
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3603 = mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3660 = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4380 = mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1517 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1573 = mem[_1517 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])] = mem[_1517 + ceil32(arg4.length) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2653 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2653
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3605 = mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3661 = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4381 = mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1519 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1574 = mem[_1519 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])] = mem[_1519 + ceil32(arg4.length) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2657 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2657
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3607 = mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3662 = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4382 = mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1521 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1575 = mem[_1521 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])] = mem[_1521 + ceil32(arg4.length) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2661 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2661
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3609 = mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3663 = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4383 = mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1523 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1576 = mem[_1523 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])] = mem[_1523 + ceil32(arg4.length) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2665 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2665
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3611 = mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3664 = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4384 = mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1525 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1577 = mem[_1525 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])] = mem[_1525 + ceil32(arg4.length) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2669 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2669
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3613 = mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3665 = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4385 = mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1527 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1578 = mem[_1527 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])] = mem[_1527 + ceil32(arg4.length) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2673 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2673
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3615 = mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3666 = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4386 = mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1529 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1579 = mem[_1529 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])] = mem[_1529 + ceil32(arg4.length) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2677 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2677
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3617 = mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3667 = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4387 = mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1531 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1580 = mem[_1531 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])] = mem[_1531 + ceil32(arg4.length) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2681 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2681
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3619 = mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3668 = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4388 = mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = Mask(96, 0, arg4.length), mem[128 len 20]
    _3 = mem[136]
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    mem[ceil32(arg4.length) + 320] = 2
    mem[ceil32(arg4.length) + 352 len 64] = call.data[calldata.size len 64]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg3
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1485 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1557 = mem[_1485 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])] = mem[_1485 + ceil32(arg4.length) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2589 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2589
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3573 = mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3645 = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4365 = mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1487 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1558 = mem[_1487 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])] = mem[_1487 + ceil32(arg4.length) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2593 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2593
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3575 = mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3646 = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4366 = mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1489 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1559 = mem[_1489 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])] = mem[_1489 + ceil32(arg4.length) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2597 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2597
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3577 = mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3647 = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4367 = mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1491 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1560 = mem[_1491 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])] = mem[_1491 + ceil32(arg4.length) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2601 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2601
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3579 = mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3648 = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4368 = mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1493 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1561 = mem[_1493 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])] = mem[_1493 + ceil32(arg4.length) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2605 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2605
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3581 = mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3649 = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4369 = mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1495 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1562 = mem[_1495 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])] = mem[_1495 + ceil32(arg4.length) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2609 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2609
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3583 = mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3650 = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4370 = mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1497 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1563 = mem[_1497 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])] = mem[_1497 + ceil32(arg4.length) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2613 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2613
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3585 = mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3651 = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4371 = mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1499 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1564 = mem[_1499 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])] = mem[_1499 + ceil32(arg4.length) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2617 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2617
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3587 = mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3652 = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4372 = mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1501 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1565 = mem[_1501 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])] = mem[_1501 + ceil32(arg4.length) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2621 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2621
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3589 = mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3653 = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4373 = mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1503 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1566 = mem[_1503 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])] = mem[_1503 + ceil32(arg4.length) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2625 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2625
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3591 = mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3654 = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4374 = mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1505 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1567 = mem[_1505 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])] = mem[_1505 + ceil32(arg4.length) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2629 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2629
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3593 = mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3655 = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4375 = mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1507 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1568 = mem[_1507 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])] = mem[_1507 + ceil32(arg4.length) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2633 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2633
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3595 = mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3656 = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4376 = mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    else:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg2
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1509 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1569 = mem[_1509 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])] = mem[_1509 + ceil32(arg4.length) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2637 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2637
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3597 = mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3657 = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4377 = mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1511 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1570 = mem[_1511 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])] = mem[_1511 + ceil32(arg4.length) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2641 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2641
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3599 = mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3658 = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4378 = mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1513 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1571 = mem[_1513 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])] = mem[_1513 + ceil32(arg4.length) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2645 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2645
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3601 = mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3659 = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4379 = mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1515 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1572 = mem[_1515 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])] = mem[_1515 + ceil32(arg4.length) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2649 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2649
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3603 = mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3660 = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4380 = mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1517 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1573 = mem[_1517 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])] = mem[_1517 + ceil32(arg4.length) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2653 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2653
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3605 = mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3661 = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4381 = mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1519 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1574 = mem[_1519 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])] = mem[_1519 + ceil32(arg4.length) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2657 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2657
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3607 = mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3662 = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4382 = mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1521 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1575 = mem[_1521 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])] = mem[_1521 + ceil32(arg4.length) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2661 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2661
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3609 = mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3663 = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4383 = mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1523 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1576 = mem[_1523 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])] = mem[_1523 + ceil32(arg4.length) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2665 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2665
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3611 = mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3664 = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4384 = mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1525 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1577 = mem[_1525 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])] = mem[_1525 + ceil32(arg4.length) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2669 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2669
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3613 = mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3665 = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4385 = mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1527 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1578 = mem[_1527 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])] = mem[_1527 + ceil32(arg4.length) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2673 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2673
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3615 = mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3666 = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4386 = mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1529 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1579 = mem[_1529 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])] = mem[_1529 + ceil32(arg4.length) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2677 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2677
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3617 = mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3667 = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4387 = mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1531 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1580 = mem[_1531 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])] = mem[_1531 + ceil32(arg4.length) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2681 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2681
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3619 = mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3668 = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4388 = mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = Mask(96, 0, arg4.length), mem[128 len 20]
    _3 = mem[136]
    mem[ceil32(arg4.length) + 128] = 2
    mem[ceil32(arg4.length) + 160 len 64] = call.data[calldata.size len 64]
    mem[ceil32(arg4.length) + 224] = 2
    mem[ceil32(arg4.length) + 320] = 2
    mem[ceil32(arg4.length) + 352 len 64] = call.data[calldata.size len 64]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg3
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1485 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1557 = mem[_1485 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])] = mem[_1485 + ceil32(arg4.length) + 448 len floor32(mem[_1485 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2589 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2589
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3573 = mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3645 = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3573 + (32 * _1557) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4365 = mem[(32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3645) + (32 * _1557) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4365 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1487 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1558 = mem[_1487 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])] = mem[_1487 + ceil32(arg4.length) + 448 len floor32(mem[_1487 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2593 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2593
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3575 = mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3646 = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3575 + (32 * _1558) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4366 = mem[(32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3646) + (32 * _1558) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4366 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1489 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1559 = mem[_1489 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])] = mem[_1489 + ceil32(arg4.length) + 448 len floor32(mem[_1489 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2597 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2597
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3577 = mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3647 = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3577 + (32 * _1559) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4367 = mem[(32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3647) + (32 * _1559) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4367 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1491 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                    _1560 = mem[_1491 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])] = mem[_1491 + ceil32(arg4.length) + 448 len floor32(mem[_1491 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2601 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2601
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3579 = mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3648 = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3579 + (32 * _1560) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4368 = mem[(32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3648) + (32 * _1560) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4368 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1493 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1561 = mem[_1493 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])] = mem[_1493 + ceil32(arg4.length) + 448 len floor32(mem[_1493 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2605 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2605
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3581 = mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3649 = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3581 + (32 * _1561) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4369 = mem[(32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3649) + (32 * _1561) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4369 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1495 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1562 = mem[_1495 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])] = mem[_1495 + ceil32(arg4.length) + 448 len floor32(mem[_1495 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2609 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2609
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3583 = mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3650 = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3583 + (32 * _1562) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4370 = mem[(32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3650) + (32 * _1562) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4370 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1497 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1563 = mem[_1497 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])] = mem[_1497 + ceil32(arg4.length) + 448 len floor32(mem[_1497 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2613 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2613
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3585 = mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3651 = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3585 + (32 * _1563) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4371 = mem[(32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3651) + (32 * _1563) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4371 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1499 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1564 = mem[_1499 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])] = mem[_1499 + ceil32(arg4.length) + 448 len floor32(mem[_1499 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2617 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2617
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3587 = mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3652 = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3587 + (32 * _1564) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4372 = mem[(32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3652) + (32 * _1564) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4372 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg3
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1501 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1565 = mem[_1501 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])] = mem[_1501 + ceil32(arg4.length) + 448 len floor32(mem[_1501 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2621 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2621
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3589 = mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3653 = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3589 + (32 * _1565) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4373 = mem[(32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3653) + (32 * _1565) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4373 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1503 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1566 = mem[_1503 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])] = mem[_1503 + ceil32(arg4.length) + 448 len floor32(mem[_1503 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2625 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2625
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3591 = mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3654 = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3591 + (32 * _1566) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4374 = mem[(32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3654) + (32 * _1566) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4374 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1505 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1567 = mem[_1505 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])] = mem[_1505 + ceil32(arg4.length) + 448 len floor32(mem[_1505 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2629 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2629
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3593 = mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3655 = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3593 + (32 * _1567) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4375 = mem[(32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3655) + (32 * _1567) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4375 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1507 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg3) >> 32 + ceil32(arg4.length) + 416]
                        _1568 = mem[_1507 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])] = mem[_1507 + ceil32(arg4.length) + 448 len floor32(mem[_1507 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2633 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg3
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2633
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3595 = mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3656 = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3595 + (32 * _1568) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4376 = mem[(32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3656) + (32 * _1568) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4376 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    else:
        if not arg2:
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
            require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
            sub_43a9117dAddress = address(_3)
            sub_62a956afAddress = address(_2)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_3), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 420] = arg2
            mem[ceil32(arg4.length) + 452] = 64
            mem[ceil32(arg4.length) + 484] = 2
            mem[ceil32(arg4.length) + 516 len 0] = None
            require ext_code.size(sub_62a956afAddress)
            staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1509 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1569 = mem[_1509 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])] = mem[_1509 + ceil32(arg4.length) + 448 len floor32(mem[_1509 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2637 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2637
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3597 = mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3657 = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3597 + (32 * _1569) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4377 = mem[(32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3657) + (32 * _1569) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4377 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1511 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1570 = mem[_1511 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])] = mem[_1511 + ceil32(arg4.length) + 448 len floor32(mem[_1511 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2641 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2641
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3599 = mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3658 = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3599 + (32 * _1570) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4378 = mem[(32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3658) + (32 * _1570) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4378 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                if not arg2:
                    _1513 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1571 = mem[_1513 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])] = mem[_1513 + ceil32(arg4.length) + 448 len floor32(mem[_1513 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2645 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2645
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3601 = mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3659 = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3601 + (32 * _1571) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4379 = mem[(32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3659) + (32 * _1571) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4379 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    _1515 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                    _1572 = mem[_1515 + ceil32(arg4.length) + 416]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])] = mem[_1515 + ceil32(arg4.length) + 448 len floor32(mem[_1515 + ceil32(arg4.length) + 416])]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    _2649 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2649
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                    require ext_code.size(sub_43a9117dAddress)
                    call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _3603 = mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    _3660 = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3603 + (32 * _1572) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                    require 1 < mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                    _4380 = mem[(32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                    mem[(32 * _3660) + (32 * _1572) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, _4380 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
        else:
            if arg3:
                revert with 0, 'one should be zero'
            require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            if not arg2:
                mem[ceil32(arg4.length) + 160] = ext_call.return_data[12 len 20]
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[12 len 20])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1517 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1573 = mem[_1517 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])] = mem[_1517 + ceil32(arg4.length) + 448 len floor32(mem[_1517 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2653 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2653
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3605 = mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3661 = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3605 + (32 * _1573) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4381 = mem[(32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3661) + (32 * _1573) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4381 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1519 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1574 = mem[_1519 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])] = mem[_1519 + ceil32(arg4.length) + 448 len floor32(mem[_1519 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2657 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2657
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3607 = mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3662 = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3607 + (32 * _1574) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4382 = mem[(32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3662) + (32 * _1574) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4382 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1521 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1575 = mem[_1521 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])] = mem[_1521 + ceil32(arg4.length) + 448 len floor32(mem[_1521 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2661 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2661
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3609 = mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3663 = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3609 + (32 * _1575) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4383 = mem[(32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3663) + (32 * _1575) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4383 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1523 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1576 = mem[_1523 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])] = mem[_1523 + ceil32(arg4.length) + 448 len floor32(mem[_1523 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2665 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2665
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3611 = mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3664 = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3611 + (32 * _1576) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4384 = mem[(32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3664) + (32 * _1576) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4384 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
            else:
                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 192] = address(ext_call.return_data[0])
                require 1 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 256] = address(ext_call.return_data[0])
                require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                mem[ceil32(arg4.length) + 288] = address(ext_call.return_data[0])
                sub_43a9117dAddress = address(_3)
                sub_62a956afAddress = address(_2)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_3), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(arg4.length) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 420] = arg2
                mem[ceil32(arg4.length) + 452] = 64
                mem[ceil32(arg4.length) + 484] = 2
                mem[ceil32(arg4.length) + 516 len 0] = None
                require ext_code.size(sub_62a956afAddress)
                staticcall sub_62a956afAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[ceil32(arg4.length) + 516 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(arg4.length) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg4.length) + ceil32(return_data.size) + 416
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1525 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1577 = mem[_1525 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])] = mem[_1525 + ceil32(arg4.length) + 448 len floor32(mem[_1525 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2669 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2669
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3613 = mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3665 = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3613 + (32 * _1577) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4385 = mem[(32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3665) + (32 * _1577) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4385 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1527 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1578 = mem[_1527 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])] = mem[_1527 + ceil32(arg4.length) + 448 len floor32(mem[_1527 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2673 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2673
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3615 = mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3666 = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3615 + (32 * _1578) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4386 = mem[(32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3666) + (32 * _1578) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4386 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                else:
                    if not arg2:
                        _1529 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1579 = mem[_1529 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])] = mem[_1529 + ceil32(arg4.length) + 448 len floor32(mem[_1529 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2677 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2677
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3617 = mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3667 = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3617 + (32 * _1579) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4387 = mem[(32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3667) + (32 * _1579) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4387 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                    else:
                        _1531 = mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416] <= 4294967296 and mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]) + 32 <= return_data.size
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 416] = mem[mem[ceil32(arg4.length) + 416 len 4], Mask(224, 32, arg2) >> 32 + ceil32(arg4.length) + 416]
                        _1580 = mem[_1531 + ceil32(arg4.length) + 416]
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])] = mem[_1531 + ceil32(arg4.length) + 448 len floor32(mem[_1531 + ceil32(arg4.length) + 416])]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        _2681 = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452] = arg2
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 484] = _2681
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 548] = this.address
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 580] = block.timestamp + (24 * 3600)
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 516] = 160
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 644 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
                        require ext_code.size(sub_43a9117dAddress)
                        call sub_43a9117dAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 452 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448
                        require return_data.size >= 32
                        _3619 = mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        _3668 = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])] = mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 480 len floor32(mem[_3619 + (32 * _1580) + ceil32(arg4.length) + ceil32(return_data.size) + 448])]
                        require 1 < mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 448]
                        _4388 = mem[(32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 512]
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = msg.sender
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require 0 < mem[ceil32(arg4.length) + ceil32(return_data.size) + 416]
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 480] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 484] = owner
                        mem[(32 * _3668) + (32 * _1580) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 516] = _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, _4388 - mem[ceil32(arg4.length) + ceil32(return_data.size) + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
