contract main {




// =====================  Runtime code  =====================


array of uint256 sub_cedb8a81;
address stor2;
address stor3;

function sub_cedb8a81(?) {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
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
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(stor2)
            staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1264 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1336 = mem[_1264 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1264 + 192])] = mem[_1264 + 224 len floor32(mem[_1264 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2224 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1336) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1336) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1336) + ceil32(return_data.size) + 260] = _2224
                    mem[(32 * _1336) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1336) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1336) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1336) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1336) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2224, Array(len=2, data=mem[(32 * _1336) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1336) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1336) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3064 = mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1336) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1336) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1336) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1336) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1336) + ceil32(return_data.size) + 224]
                    mem[(32 * _1336) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3064 + (32 * _1336) + ceil32(return_data.size) + 224])] = mem[_3064 + (32 * _1336) + ceil32(return_data.size) + 256 len floor32(mem[_3064 + (32 * _1336) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1336) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1336) + (2 * ceil32(return_data.size)) + 288] <= _2224:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2224
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1336) + (2 * ceil32(return_data.size)) + 288] - _2224
                else:
                    _1266 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1337 = mem[_1266 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1266 + 192])] = mem[_1266 + 224 len floor32(mem[_1266 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2228 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1337) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1337) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1337) + ceil32(return_data.size) + 260] = _2228
                    mem[(32 * _1337) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1337) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1337) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1337) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1337) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2228, Array(len=2, data=mem[(32 * _1337) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1337) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1337) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3066 = mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1337) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1337) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1337) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1337) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1337) + ceil32(return_data.size) + 224]
                    mem[(32 * _1337) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3066 + (32 * _1337) + ceil32(return_data.size) + 224])] = mem[_3066 + (32 * _1337) + ceil32(return_data.size) + 256 len floor32(mem[_3066 + (32 * _1337) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1337) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1337) + (2 * ceil32(return_data.size)) + 288] <= _2228:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2228
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1337) + (2 * ceil32(return_data.size)) + 288] - _2228
            else:
                if not arg2:
                    _1268 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1338 = mem[_1268 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1268 + 192])] = mem[_1268 + 224 len floor32(mem[_1268 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2232 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1338) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1338) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1338) + ceil32(return_data.size) + 260] = _2232
                    mem[(32 * _1338) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1338) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1338) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1338) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1338) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2232, Array(len=2, data=mem[(32 * _1338) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1338) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1338) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3068 = mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1338) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1338) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1338) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1338) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1338) + ceil32(return_data.size) + 224]
                    mem[(32 * _1338) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3068 + (32 * _1338) + ceil32(return_data.size) + 224])] = mem[_3068 + (32 * _1338) + ceil32(return_data.size) + 256 len floor32(mem[_3068 + (32 * _1338) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1338) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1338) + (2 * ceil32(return_data.size)) + 288] <= _2232:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2232
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1338) + (2 * ceil32(return_data.size)) + 288] - _2232
                else:
                    _1270 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                    _1339 = mem[_1270 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1270 + 192])] = mem[_1270 + 224 len floor32(mem[_1270 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2236 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1339) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1339) + ceil32(return_data.size) + 228] = arg3
                    mem[(32 * _1339) + ceil32(return_data.size) + 260] = _2236
                    mem[(32 * _1339) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1339) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1339) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1339) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1339) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, _2236, Array(len=2, data=mem[(32 * _1339) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1339) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1339) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3070 = mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                    require mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1339) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1339) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1339) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1339) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1339) + ceil32(return_data.size) + 224]
                    mem[(32 * _1339) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3070 + (32 * _1339) + ceil32(return_data.size) + 224])] = mem[_3070 + (32 * _1339) + ceil32(return_data.size) + 256 len floor32(mem[_3070 + (32 * _1339) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1339) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1339) + (2 * ceil32(return_data.size)) + 288] <= _2236:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2236
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1339) + (2 * ceil32(return_data.size)) + 288] - _2236
        else:
            if arg3:
                revert with 0, 'One amount need to be 0!'
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(stor2)
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1272 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1340 = mem[_1272 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1272 + 192])] = mem[_1272 + 224 len floor32(mem[_1272 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2240 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1340) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1340) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1340) + ceil32(return_data.size) + 260] = _2240
                        mem[(32 * _1340) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1340) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1340) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1340) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1340) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2240, Array(len=2, data=mem[(32 * _1340) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1340) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1340) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3072 = mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1340) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1340) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1340) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1340) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1340) + ceil32(return_data.size) + 224]
                        mem[(32 * _1340) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3072 + (32 * _1340) + ceil32(return_data.size) + 224])] = mem[_3072 + (32 * _1340) + ceil32(return_data.size) + 256 len floor32(mem[_3072 + (32 * _1340) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1340) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1340) + (2 * ceil32(return_data.size)) + 288] <= _2240:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2240
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1340) + (2 * ceil32(return_data.size)) + 288] - _2240
                    else:
                        _1274 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1341 = mem[_1274 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1274 + 192])] = mem[_1274 + 224 len floor32(mem[_1274 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2244 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1341) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1341) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1341) + ceil32(return_data.size) + 260] = _2244
                        mem[(32 * _1341) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1341) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1341) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1341) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1341) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2244, Array(len=2, data=mem[(32 * _1341) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1341) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1341) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3074 = mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1341) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1341) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1341) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1341) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1341) + ceil32(return_data.size) + 224]
                        mem[(32 * _1341) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3074 + (32 * _1341) + ceil32(return_data.size) + 224])] = mem[_3074 + (32 * _1341) + ceil32(return_data.size) + 256 len floor32(mem[_3074 + (32 * _1341) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1341) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1341) + (2 * ceil32(return_data.size)) + 288] <= _2244:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2244
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1341) + (2 * ceil32(return_data.size)) + 288] - _2244
                else:
                    if not arg2:
                        _1276 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1342 = mem[_1276 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1276 + 192])] = mem[_1276 + 224 len floor32(mem[_1276 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2248 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1342) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1342) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1342) + ceil32(return_data.size) + 260] = _2248
                        mem[(32 * _1342) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1342) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1342) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1342) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1342) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2248, Array(len=2, data=mem[(32 * _1342) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1342) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1342) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3076 = mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1342) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1342) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1342) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1342) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1342) + ceil32(return_data.size) + 224]
                        mem[(32 * _1342) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3076 + (32 * _1342) + ceil32(return_data.size) + 224])] = mem[_3076 + (32 * _1342) + ceil32(return_data.size) + 256 len floor32(mem[_3076 + (32 * _1342) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1342) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1342) + (2 * ceil32(return_data.size)) + 288] <= _2248:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2248
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1342) + (2 * ceil32(return_data.size)) + 288] - _2248
                    else:
                        _1278 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1343 = mem[_1278 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1278 + 192])] = mem[_1278 + 224 len floor32(mem[_1278 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2252 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1343) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1343) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1343) + ceil32(return_data.size) + 260] = _2252
                        mem[(32 * _1343) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1343) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1343) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1343) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1343) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2252, Array(len=2, data=mem[(32 * _1343) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1343) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1343) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3078 = mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1343) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1343) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1343) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1343) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1343) + ceil32(return_data.size) + 224]
                        mem[(32 * _1343) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3078 + (32 * _1343) + ceil32(return_data.size) + 224])] = mem[_3078 + (32 * _1343) + ceil32(return_data.size) + 256 len floor32(mem[_3078 + (32 * _1343) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1343) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1343) + (2 * ceil32(return_data.size)) + 288] <= _2252:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2252
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1343) + (2 * ceil32(return_data.size)) + 288] - _2252
            else:
                mem[128] = address(ext_call.return_data[0])
                mem[160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(stor2)
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1280 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1344 = mem[_1280 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1280 + 192])] = mem[_1280 + 224 len floor32(mem[_1280 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2256 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1344) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1344) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1344) + ceil32(return_data.size) + 260] = _2256
                        mem[(32 * _1344) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1344) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1344) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1344) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1344) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2256, Array(len=2, data=mem[(32 * _1344) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1344) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1344) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3080 = mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1344) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1344) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1344) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1344) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1344) + ceil32(return_data.size) + 224]
                        mem[(32 * _1344) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3080 + (32 * _1344) + ceil32(return_data.size) + 224])] = mem[_3080 + (32 * _1344) + ceil32(return_data.size) + 256 len floor32(mem[_3080 + (32 * _1344) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1344) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1344) + (2 * ceil32(return_data.size)) + 288] <= _2256:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1344) + (2 * ceil32(return_data.size)) + 288] - _2256
                    else:
                        _1282 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1345 = mem[_1282 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1282 + 192])] = mem[_1282 + 224 len floor32(mem[_1282 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2260 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1345) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1345) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1345) + ceil32(return_data.size) + 260] = _2260
                        mem[(32 * _1345) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1345) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1345) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1345) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1345) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2260, Array(len=2, data=mem[(32 * _1345) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1345) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1345) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3082 = mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1345) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1345) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1345) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1345) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1345) + ceil32(return_data.size) + 224]
                        mem[(32 * _1345) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3082 + (32 * _1345) + ceil32(return_data.size) + 224])] = mem[_3082 + (32 * _1345) + ceil32(return_data.size) + 256 len floor32(mem[_3082 + (32 * _1345) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1345) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1345) + (2 * ceil32(return_data.size)) + 288] <= _2260:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2260
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1345) + (2 * ceil32(return_data.size)) + 288] - _2260
                else:
                    if not arg2:
                        _1284 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1346 = mem[_1284 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1284 + 192])] = mem[_1284 + 224 len floor32(mem[_1284 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2264 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1346) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1346) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1346) + ceil32(return_data.size) + 260] = _2264
                        mem[(32 * _1346) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1346) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1346) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1346) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1346) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2264, Array(len=2, data=mem[(32 * _1346) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1346) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1346) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3084 = mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1346) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1346) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1346) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1346) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1346) + ceil32(return_data.size) + 224]
                        mem[(32 * _1346) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3084 + (32 * _1346) + ceil32(return_data.size) + 224])] = mem[_3084 + (32 * _1346) + ceil32(return_data.size) + 256 len floor32(mem[_3084 + (32 * _1346) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1346) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1346) + (2 * ceil32(return_data.size)) + 288] <= _2264:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2264
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1346) + (2 * ceil32(return_data.size)) + 288] - _2264
                    else:
                        _1286 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                        _1347 = mem[_1286 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1286 + 192])] = mem[_1286 + 224 len floor32(mem[_1286 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2268 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1347) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1347) + ceil32(return_data.size) + 228] = arg3
                        mem[(32 * _1347) + ceil32(return_data.size) + 260] = _2268
                        mem[(32 * _1347) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1347) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1347) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1347) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1347) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3, _2268, Array(len=2, data=mem[(32 * _1347) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1347) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1347) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3086 = mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                        require mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1347) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1347) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1347) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1347) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1347) + ceil32(return_data.size) + 224]
                        mem[(32 * _1347) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3086 + (32 * _1347) + ceil32(return_data.size) + 224])] = mem[_3086 + (32 * _1347) + ceil32(return_data.size) + 256 len floor32(mem[_3086 + (32 * _1347) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1347) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1347) + (2 * ceil32(return_data.size)) + 288] <= _2268:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2268
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1347) + (2 * ceil32(return_data.size)) + 288] - _2268
    else:
        if not arg2:
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[196] = arg2
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(stor2)
            staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            if not arg2:
                if not arg2:
                    _1288 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1348 = mem[_1288 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1288 + 192])] = mem[_1288 + 224 len floor32(mem[_1288 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2272 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1348) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1348) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1348) + ceil32(return_data.size) + 260] = _2272
                    mem[(32 * _1348) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1348) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1348) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1348) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1348) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2272, Array(len=2, data=mem[(32 * _1348) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1348) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1348) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3088 = mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1348) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1348) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1348) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1348) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1348) + ceil32(return_data.size) + 224]
                    mem[(32 * _1348) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3088 + (32 * _1348) + ceil32(return_data.size) + 224])] = mem[_3088 + (32 * _1348) + ceil32(return_data.size) + 256 len floor32(mem[_3088 + (32 * _1348) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1348) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1348) + (2 * ceil32(return_data.size)) + 288] <= _2272:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2272
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1348) + (2 * ceil32(return_data.size)) + 288] - _2272
                else:
                    _1290 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1349 = mem[_1290 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1290 + 192])] = mem[_1290 + 224 len floor32(mem[_1290 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2276 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1349) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1349) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1349) + ceil32(return_data.size) + 260] = _2276
                    mem[(32 * _1349) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1349) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1349) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1349) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1349) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2276, Array(len=2, data=mem[(32 * _1349) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1349) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1349) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3090 = mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1349) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1349) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1349) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1349) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1349) + ceil32(return_data.size) + 224]
                    mem[(32 * _1349) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3090 + (32 * _1349) + ceil32(return_data.size) + 224])] = mem[_3090 + (32 * _1349) + ceil32(return_data.size) + 256 len floor32(mem[_3090 + (32 * _1349) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1349) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1349) + (2 * ceil32(return_data.size)) + 288] <= _2276:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2276
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1349) + (2 * ceil32(return_data.size)) + 288] - _2276
            else:
                if not arg2:
                    _1292 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1350 = mem[_1292 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1292 + 192])] = mem[_1292 + 224 len floor32(mem[_1292 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2280 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1350) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1350) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1350) + ceil32(return_data.size) + 260] = _2280
                    mem[(32 * _1350) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1350) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1350) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1350) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1350) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2280, Array(len=2, data=mem[(32 * _1350) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1350) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1350) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3092 = mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1350) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1350) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1350) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1350) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1350) + ceil32(return_data.size) + 224]
                    mem[(32 * _1350) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3092 + (32 * _1350) + ceil32(return_data.size) + 224])] = mem[_3092 + (32 * _1350) + ceil32(return_data.size) + 256 len floor32(mem[_3092 + (32 * _1350) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1350) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1350) + (2 * ceil32(return_data.size)) + 288] <= _2280:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2280
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1350) + (2 * ceil32(return_data.size)) + 288] - _2280
                else:
                    _1294 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                    _1351 = mem[_1294 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_1294 + 192])] = mem[_1294 + 224 len floor32(mem[_1294 + 192])]
                    require 0 < mem[ceil32(return_data.size) + 192]
                    _2284 = mem[ceil32(return_data.size) + 224]
                    mem[(32 * _1351) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1351) + ceil32(return_data.size) + 228] = arg2
                    mem[(32 * _1351) + ceil32(return_data.size) + 260] = _2284
                    mem[(32 * _1351) + ceil32(return_data.size) + 324] = msg.sender
                    mem[(32 * _1351) + ceil32(return_data.size) + 356] = block.timestamp
                    mem[(32 * _1351) + ceil32(return_data.size) + 292] = 160
                    mem[(32 * _1351) + ceil32(return_data.size) + 388] = 2
                    mem[(32 * _1351) + ceil32(return_data.size) + 420 len 0] = None
                    require ext_code.size(stor3)
                    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, _2284, Array(len=2, data=mem[(32 * _1351) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1351) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1351) + (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _3094 = mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1351) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1351) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                    mem[(32 * _1351) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1351) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1351) + ceil32(return_data.size) + 224]
                    mem[(32 * _1351) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3094 + (32 * _1351) + ceil32(return_data.size) + 224])] = mem[_3094 + (32 * _1351) + ceil32(return_data.size) + 256 len floor32(mem[_3094 + (32 * _1351) + ceil32(return_data.size) + 224])]
                    require 1 < mem[(32 * _1351) + (2 * ceil32(return_data.size)) + 224]
                    if mem[(32 * _1351) + (2 * ceil32(return_data.size)) + 288] <= _2284:
                        revert with 0, 'Got to litte!'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _2284
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args tx.origin, mem[(32 * _1351) + (2 * ceil32(return_data.size)) + 288] - _2284
        else:
            if arg3:
                revert with 0, 'One amount need to be 0!'
            if not arg2:
                mem[128] = ext_call.return_data[12 len 20]
                mem[160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg2
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(stor2)
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1296 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1352 = mem[_1296 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1296 + 192])] = mem[_1296 + 224 len floor32(mem[_1296 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2288 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1352) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1352) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1352) + ceil32(return_data.size) + 260] = _2288
                        mem[(32 * _1352) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1352) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1352) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1352) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1352) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2288, Array(len=2, data=mem[(32 * _1352) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1352) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1352) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3096 = mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1352) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1352) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1352) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1352) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1352) + ceil32(return_data.size) + 224]
                        mem[(32 * _1352) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3096 + (32 * _1352) + ceil32(return_data.size) + 224])] = mem[_3096 + (32 * _1352) + ceil32(return_data.size) + 256 len floor32(mem[_3096 + (32 * _1352) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1352) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1352) + (2 * ceil32(return_data.size)) + 288] <= _2288:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2288
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1352) + (2 * ceil32(return_data.size)) + 288] - _2288
                    else:
                        _1298 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1353 = mem[_1298 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1298 + 192])] = mem[_1298 + 224 len floor32(mem[_1298 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2292 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1353) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1353) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1353) + ceil32(return_data.size) + 260] = _2292
                        mem[(32 * _1353) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1353) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1353) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1353) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1353) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2292, Array(len=2, data=mem[(32 * _1353) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1353) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3098 = mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1353) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1353) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1353) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1353) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1353) + ceil32(return_data.size) + 224]
                        mem[(32 * _1353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3098 + (32 * _1353) + ceil32(return_data.size) + 224])] = mem[_3098 + (32 * _1353) + ceil32(return_data.size) + 256 len floor32(mem[_3098 + (32 * _1353) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1353) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1353) + (2 * ceil32(return_data.size)) + 288] <= _2292:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2292
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1353) + (2 * ceil32(return_data.size)) + 288] - _2292
                else:
                    if not arg2:
                        _1300 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1354 = mem[_1300 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1300 + 192])] = mem[_1300 + 224 len floor32(mem[_1300 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2296 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1354) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1354) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1354) + ceil32(return_data.size) + 260] = _2296
                        mem[(32 * _1354) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1354) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1354) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1354) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1354) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2296, Array(len=2, data=mem[(32 * _1354) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1354) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1354) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3100 = mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1354) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1354) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1354) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1354) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1354) + ceil32(return_data.size) + 224]
                        mem[(32 * _1354) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3100 + (32 * _1354) + ceil32(return_data.size) + 224])] = mem[_3100 + (32 * _1354) + ceil32(return_data.size) + 256 len floor32(mem[_3100 + (32 * _1354) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1354) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1354) + (2 * ceil32(return_data.size)) + 288] <= _2296:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2296
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1354) + (2 * ceil32(return_data.size)) + 288] - _2296
                    else:
                        _1302 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1355 = mem[_1302 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1302 + 192])] = mem[_1302 + 224 len floor32(mem[_1302 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2300 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1355) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1355) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1355) + ceil32(return_data.size) + 260] = _2300
                        mem[(32 * _1355) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1355) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1355) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1355) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1355) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2300, Array(len=2, data=mem[(32 * _1355) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1355) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1355) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3102 = mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1355) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1355) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1355) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1355) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1355) + ceil32(return_data.size) + 224]
                        mem[(32 * _1355) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3102 + (32 * _1355) + ceil32(return_data.size) + 224])] = mem[_3102 + (32 * _1355) + ceil32(return_data.size) + 256 len floor32(mem[_3102 + (32 * _1355) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1355) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1355) + (2 * ceil32(return_data.size)) + 288] <= _2300:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2300
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1355) + (2 * ceil32(return_data.size)) + 288] - _2300
            else:
                mem[128] = address(ext_call.return_data[0])
                mem[160] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor3, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[196] = arg2
                mem[228] = 64
                mem[260] = 2
                mem[292 len 0] = None
                require ext_code.size(stor2)
                staticcall stor2.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                if not arg2:
                    if not arg2:
                        _1304 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1356 = mem[_1304 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1304 + 192])] = mem[_1304 + 224 len floor32(mem[_1304 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2304 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1356) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1356) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1356) + ceil32(return_data.size) + 260] = _2304
                        mem[(32 * _1356) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1356) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1356) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1356) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1356) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2304, Array(len=2, data=mem[(32 * _1356) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1356) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1356) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3104 = mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1356) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1356) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1356) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1356) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1356) + ceil32(return_data.size) + 224]
                        mem[(32 * _1356) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3104 + (32 * _1356) + ceil32(return_data.size) + 224])] = mem[_3104 + (32 * _1356) + ceil32(return_data.size) + 256 len floor32(mem[_3104 + (32 * _1356) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1356) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1356) + (2 * ceil32(return_data.size)) + 288] <= _2304:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2304
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1356) + (2 * ceil32(return_data.size)) + 288] - _2304
                    else:
                        _1306 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1357 = mem[_1306 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1306 + 192])] = mem[_1306 + 224 len floor32(mem[_1306 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2308 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1357) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1357) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1357) + ceil32(return_data.size) + 260] = _2308
                        mem[(32 * _1357) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1357) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1357) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1357) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1357) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2308, Array(len=2, data=mem[(32 * _1357) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1357) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1357) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3106 = mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1357) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1357) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1357) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1357) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1357) + ceil32(return_data.size) + 224]
                        mem[(32 * _1357) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3106 + (32 * _1357) + ceil32(return_data.size) + 224])] = mem[_3106 + (32 * _1357) + ceil32(return_data.size) + 256 len floor32(mem[_3106 + (32 * _1357) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1357) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1357) + (2 * ceil32(return_data.size)) + 288] <= _2308:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2308
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1357) + (2 * ceil32(return_data.size)) + 288] - _2308
                else:
                    if not arg2:
                        _1308 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1358 = mem[_1308 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1308 + 192])] = mem[_1308 + 224 len floor32(mem[_1308 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2312 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1358) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1358) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1358) + ceil32(return_data.size) + 260] = _2312
                        mem[(32 * _1358) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1358) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1358) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1358) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1358) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2312, Array(len=2, data=mem[(32 * _1358) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1358) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1358) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3108 = mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1358) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1358) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1358) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1358) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1358) + ceil32(return_data.size) + 224]
                        mem[(32 * _1358) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3108 + (32 * _1358) + ceil32(return_data.size) + 224])] = mem[_3108 + (32 * _1358) + ceil32(return_data.size) + 256 len floor32(mem[_3108 + (32 * _1358) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1358) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1358) + (2 * ceil32(return_data.size)) + 288] <= _2312:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2312
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1358) + (2 * ceil32(return_data.size)) + 288] - _2312
                    else:
                        _1310 = mem[192 len 4], Mask(224, 32, arg2) >> 32
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
                        _1359 = mem[_1310 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_1310 + 192])] = mem[_1310 + 224 len floor32(mem[_1310 + 192])]
                        require 0 < mem[ceil32(return_data.size) + 192]
                        _2316 = mem[ceil32(return_data.size) + 224]
                        mem[(32 * _1359) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _1359) + ceil32(return_data.size) + 228] = arg2
                        mem[(32 * _1359) + ceil32(return_data.size) + 260] = _2316
                        mem[(32 * _1359) + ceil32(return_data.size) + 324] = msg.sender
                        mem[(32 * _1359) + ceil32(return_data.size) + 356] = block.timestamp
                        mem[(32 * _1359) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _1359) + ceil32(return_data.size) + 388] = 2
                        mem[(32 * _1359) + ceil32(return_data.size) + 420 len 0] = None
                        require ext_code.size(stor3)
                        call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2, _2316, Array(len=2, data=mem[(32 * _1359) + ceil32(return_data.size) + 420 len 64]), msg.sender, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1359) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _1359) + (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _3110 = mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                        require mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1359) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1359) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
                        mem[(32 * _1359) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1359) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg2) >> 32 + (32 * _1359) + ceil32(return_data.size) + 224]
                        mem[(32 * _1359) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_3110 + (32 * _1359) + ceil32(return_data.size) + 224])] = mem[_3110 + (32 * _1359) + ceil32(return_data.size) + 256 len floor32(mem[_3110 + (32 * _1359) + ceil32(return_data.size) + 224])]
                        require 1 < mem[(32 * _1359) + (2 * ceil32(return_data.size)) + 224]
                        if mem[(32 * _1359) + (2 * ceil32(return_data.size)) + 288] <= _2316:
                            revert with 0, 'Got to litte!'
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _2316
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args tx.origin, mem[(32 * _1359) + (2 * ceil32(return_data.size)) + 288] - _2316
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
